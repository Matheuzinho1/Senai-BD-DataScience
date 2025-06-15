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

# Consulta SQL para calcular o lucro total por categoria
query = """
    SELECT c.nome_categoria, SUM((ip.valor_unitario - p.valor_custo) * ip.quantidade) AS lucro_total
    FROM item_pedido ip
    JOIN produto p ON ip.id_produto = p.id_produto
    JOIN categoria c ON p.id_categoria = c.id_categoria
    GROUP BY c.nome_categoria
    ORDER BY lucro_total DESC;
"""

# Executar consulta
cursor.execute(query)
resultados = cursor.fetchall()

# Fechar conexão
cursor.close()
conn.close()

# Processar os resultados
categorias = []
lucros = []

for linha in resultados:
    categorias.append(linha[0])
    lucros.append(linha[1])

# Exibir resultados no console
for categoria, lucro in zip(categorias, lucros):
    print(f"Categoria: {categoria}, Lucro Total: R$ {lucro:.2f}")

# Criar gráfico de barras
plt.figure(figsize=(10, 5))
plt.barh(categorias, lucros, color='green')
plt.xlabel("Lucro Total (R$)")
plt.ylabel("Categoria")
plt.title("Lucro Total por Categoria")
plt.gca().invert_yaxis()  # Inverte eixo para a categoria com maior lucro ficar no topo
plt.show()