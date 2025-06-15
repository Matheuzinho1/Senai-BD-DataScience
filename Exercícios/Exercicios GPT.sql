USE comercio;

-- 1:
SELECT nome_produto, valor_venda FROM produto;

-- 2:
SELECT c.nome, e.*
FROM cliente c
JOIN endereco e ON c.id_cliente = e.id_cliente;

-- 3:
SELECT COUNT(id_produto) AS total_produtos 
FROM estoque;

-- 4:
SELECT * FROM produto;
SELECT p.nome_produto, e.quantidade
FROM produto p
JOIN estoque e ON e.id_produto = p.id_produto
WHERE e.quantidade <= e.quantidade_minima;

-- 5 :
SELECT c.nome, p.id_pedido
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente;

-- 6:
SELECT * FROM categoria;
SELECT p.nome_produto, c.nome_categoria
FROM categoria c
JOIN produto p ON c.id_categoria = p.id_categoria;

-- 7:
SELECT p.nome_produto, COUNT(ip.id_pedido) AS total_pedidos
FROM produto p
JOIN item_pedido ip ON p.id_produto = ip.id_produto
GROUP BY p.nome_produto
HAVING total_pedidos > 1;

-- 8:
SELECT * FROM pedido;SELECT * FROM item_pedido;
SELECT * FROM cliente;
SELECT c.nome, SUM(ip.valor_total) AS total_por_cliente
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
JOIN item_pedido ip ON p.id_pedido = ip.id_pedido
GROUP BY c.nome;

-- 9:
SELECT * FROM total_pedido;

-- 10: 
SELECT * FROM item_pedido;
SELECT p.nome_produto, SUM(ip.quantidade) AS total_vendida
FROM produto p
JOIN item_pedido ip ON p.id_produto = ip.id_produto
GROUP BY p.nome_produto
ORDER BY total_vendida DESC
LIMIT 5;

-- 11:
