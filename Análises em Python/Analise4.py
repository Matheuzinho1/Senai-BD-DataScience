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

# Consulta SQL para contar clientes por gênero
query = """
    SELECT genero, COUNT(id_cliente) 
    FROM genero
    GROUP BY genero;
"""

# Executar consulta
cursor.execute(query)
resultados = cursor.fetchall()

# Fechar conexão
cursor.close()
conn.close()

# Processar os resultados
generos = []
totais = []

for linha in resultados:
    generos.append(linha[0])
    totais.append(linha[1])

# Exibir resultados no console
for genero, total in zip(generos, totais):
    print(f"Gênero: {genero}, Total de Clientes: {total}")

# Criar gráfico de pizza
plt.figure(figsize=(6, 6))
plt.pie(totais, labels=generos, autopct='%1.1f%%', colors=['blue', 'pink', 'gray'])
plt.title("Distribuição de Clientes por Gênero")
plt.show()