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

# Consulta SQL para calcular o total de vendas por faixa etária
query = """
    SELECT FLOOR(DATEDIFF(CURDATE(), c.data_nascimento)/365/10)*10 AS faixa_etaria, 
        SUM(ip.valor_total) AS total_vendas
    FROM cliente c
    JOIN pedido p ON c.id_cliente = p.id_cliente
    JOIN item_pedido ip ON p.id_pedido = ip.id_pedido
    GROUP BY faixa_etaria
    ORDER BY faixa_etaria;
"""

# Executar consulta
cursor.execute(query)
resultados = cursor.fetchall()

# Fechar conexão
cursor.close()
conn.close()

# Processar os resultados
faixas_etarias = []
vendas = []

for linha in resultados:
    faixa = f"{int(linha[0])}-{int(linha[0]) + 9} anos"  # Ex: "20-29 anos"
    faixas_etarias.append(faixa)
    vendas.append(linha[1])

# Exibir resultados no console
print("Total de Vendas por Faixa Etária:")
for faixa, total in zip(faixas_etarias, vendas):
    print(f"Faixa Etária: {faixa}, Total de Vendas: R$ {total:.2f}")

# Criar gráfico de barras
plt.figure(figsize=(10, 5))
plt.bar(faixas_etarias, vendas, color='blue')
plt.xlabel("Faixa Etária")
plt.ylabel("Total de Vendas (R$)")
plt.title("Total de Vendas por Faixa Etária")
plt.xticks(rotation=45)  # Rotaciona os rótulos do eixo X para melhor visualização
plt.show()