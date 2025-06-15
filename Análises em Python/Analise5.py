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

# Consulta SQL para obter os 10 clientes com as compras mais recentes
query = """
    SELECT c.nome, MAX(p.data_venda) AS ultima_compra
    FROM cliente c
    JOIN pedido p ON c.id_cliente = p.id_cliente
    GROUP BY c.nome
    ORDER BY ultima_compra DESC
    LIMIT 10;
"""

# Executar consulta
cursor.execute(query)
resultados = cursor.fetchall()

# Fechar conexão
cursor.close()
conn.close()

# Processar os resultados
clientes = []
ultimas_compras = []

for linha in resultados:
    clientes.append(linha[0])
    ultimas_compras.append(linha[1])

# Exibir resultados no console
print("Top 10 Clientes com Últimas Compras Mais Recentes:")
for cliente, data in zip(clientes, ultimas_compras):
    print(f"Cliente: {cliente}, Última Compra: {data}")

# Criar gráfico de barras
plt.figure(figsize=(10, 5))
plt.barh(clientes, ultimas_compras, color='purple')
plt.xlabel("Última Compra")
plt.ylabel("Clientes")
plt.title("Últimas Compras dos Top 10 Clientes")
plt.xticks(rotation=45)
plt.gca().invert_yaxis()  # Inverter eixo para mostrar o mais recente no topo
plt.show()
