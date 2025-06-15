import mysql.connector
import pandas as pd

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='admin',
    database='comercio'
)

query = """
    SELECT p.nome_produto
    FROM produto p 
    LEFT JOIN item_pedido ip ON p.id_produto = ip.id_produto
    LEFT JOIN pedido pd ON ip.id_pedido = pd.id_pedido
    WHERE pd.data_venda IS NULL
    OR pd.data_venda