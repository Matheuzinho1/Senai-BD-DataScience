import mysql.connector
import matplotlib.pyplot as plt

# Configuração da conexão MySQL
config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'admin',
    'database': 'comercio'
}

# Conectar ao banco de dados
conn = mysql.connector.connect(**config)
cursor = conn.cursor()

# Consulta SQL para calcular o ROI dos produtos
query = """
    SELECT p.nome_produto, (SUM(ip.valor_total) - SUM(p.valor_custo * ip.quantidade)) / SUM(p.valor_custo * ip.quantidade) AS ROI
    FROM item_pedido ip
    JOIN produto p ON ip.id_produto = p.id_produto
    GROUP BY p.nome_produto
    ORDER BY ROI DESC
    LIMIT 10;
"""

# Executar consulta
cursor.execute(query)
resultados = cursor.fetchall()

# Fechar conexão
cursor.close()
conn.close()

# Processar os resultados
produtos = []
rois = []

for linha in resultados:
    produtos.append(linha[0])
    rois.append(linha[1])

# Exibir resultados no console
print("Top 10 Produtos com Maior ROI:")
for produto, roi in zip(produtos, rois):
    print(f"Produto: {produto}, ROI: {roi:.2%}")

# Criar gráfico de barras
plt.figure(figsize=(10, 5))
plt.barh(produtos, rois, color='green')
plt.xlabel("ROI (%)")
plt.ylabel("Produto")
plt.title("Top 10 Produtos com Maior ROI")
plt.gca().invert_yaxis()  # Inverter eixo para mostrar o maior ROI no topo
plt.xticks(rotation=45)
plt.show()