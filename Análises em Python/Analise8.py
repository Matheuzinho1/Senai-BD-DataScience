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

# Consulta SQL para obter o total de vendas por dia da semana
query = """
SELECT DAYNAME(p.data_venda) AS dia_semana, SUM(ip.valor_total) AS total_vendas
FROM pedido p
JOIN item_pedido ip ON p.id_pedido = ip.id_pedido
GROUP BY dia_semana
ORDER BY FIELD(dia_semana, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
"""

# Executar consulta
cursor.execute(query)
resultados = cursor.fetchall()

print(resultados)

# Fechar conexão
cursor.close()
conn.close()

# Processar os resultados
dias_semana = []
vendas = []

for linha in resultados:
    dias_semana.append(linha[0])
    vendas.append(linha[1])

# Exibir resultados no console
for dia, total in zip(dias_semana, vendas):
    print(f"Dia da Semana: {dia}, Total de Vendas: R$ {total:.2f}")

# Criar gráfico de barras
plt.figure(figsize=(8, 5))
plt.bar(dias_semana, vendas, color='blue')
plt.xlabel("Dia da Semana")
plt.ylabel("Total de Vendas (R$)")
plt.title("Total de Vendas por Dia da Semana")
plt.xticks(rotation=45)  # Rotaciona os rótulos do eixo X para melhor visualização
plt.show()