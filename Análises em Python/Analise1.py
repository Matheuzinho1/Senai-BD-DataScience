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

# Consulta SQL para obter o total de vendas por trimestre
query = """
    SELECT CONCAT(YEAR(p.data_venda), '-T', QUARTER(p.data_venda)) AS trimestre, SUM(ip.valor_total) AS total_vendas
    FROM pedido p
    JOIN item_pedido ip ON p.id_pedido = ip.id_pedido
    GROUP BY trimestre
    ORDER BY trimestre;
"""

# Executar consulta
cursor.execute(query)
resultados = cursor.fetchall()

# Fechar conexão
cursor.close()
conn.close()

# Processar os resultados
trimestres = []
vendas = []

for linha in resultados:
    trimestres.append(linha[0])
    vendas.append(linha[1])

# Exibir resultados no console
print("Vendas por Trimestre:")
for trimestre, total in zip(trimestres, vendas):
    print(f"Trimestre: {trimestre}, Total de Vendas: R$ {total:.2f}")

# Criar gráfico de linha para mostrar a tendência de vendas ao longo dos trimestres
plt.figure(figsize=(10, 5))
plt.plot(trimestres, vendas, marker='o', linestyle='-', color='blue', label="Total de Vendas")
plt.xlabel("Trimestre")
plt.ylabel("Total de Vendas (R$)")
plt.title("Evolução das Vendas por Trimestre")
plt.xticks(rotation=45)
plt.grid(True)
plt.legend()
plt.show()