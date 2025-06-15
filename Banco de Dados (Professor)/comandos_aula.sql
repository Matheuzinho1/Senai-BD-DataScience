USE comercio;

-- Adicionais
SELECT * FROM pedido WHERE id_cliente = 1;
SELECT nome, data_nascimento FROM cliente ORDER BY data_nascimento DESC;

-- Contar
SELECT ativo, COUNT(*) AS Total_Ativo FROM cliente WHERE nome LIKE 'ana%' GROUP BY ativo;
SELECT ativo, COUNT(*) FROM cliente WHERE data_nascimento > '2000-01-01' GROUP BY ativo;
SELECT ativo, COUNT(*) FROM cliente WHERE data_nascimento > '2000-01-01' GROUP BY ativo;

-- Somar
SELECT SUM(valor_total_pedido) AS Total FROM pedido;
SELECT id_pedido, SUM(valor_total_pedido) AS Total FROM pedido GROUP BY id_pedido;
SELECT id_pedido, SUM(valor_total_pedido) AS Total FROM pedido GROUP BY id_pedido LIMIT  10;

-- Max e Min
SELECT MAX(valor_total_pedido) AS total_pedido FROM pedido;
SELECT MIN(valor_total_pedido) AS total_pedido FROM pedido;

-- Inner Join
SELECT cliente.nome, contato.telefone FROM cliente INNER JOIN contato ON cliente.id_cliente = contato.id_cliente;
SELECT cliente.nome, endereco.logradouro, endereco.cidade FROM cliente INNER JOIN endereco ON cliente.id_cliente = endereco.id_cliente;
SELECT pedido.id_pedido, cliente.nome FROM cliente INNER JOIN pedido ON pedido.id_cliente = cliente.id_cliente;

-- Contagem de clientes ativos e inativos
SELECT ativo, COUNT(*) AS total_Clientes FROM cliente GROUP BY ativo;

-- Listagem de produtos com valor de venda cima da média
SELECT nome_produto, valor_venda FROM produto 
WHERE valor_venda > (SELECT AVG(valor_venda) FROM produto)
ORDER BY valor_venda DESC;

-- Analise de funcionarios por cargo
SELECT cargo, COUNT(*) AS total_Funcionarios FROM funcionario
WHERE ativo = TRUE
GROUP BY cargo 
ORDER BY total_funcionarios DESC;

-- Pedidos por status
SELECT status_venda, COUNT(*) AS total_pedidos FROM pedido
GROUP BY status_venda
ORDER BY total_pedidos ASC;

-- Produtos por categoria
SELECT categoria.nome_categoria, COUNT(produto.id_produto) AS total_produtos
FROM produto 
INNER JOIN categoria ON produto.id_categoria = categoria.id_categoria
GROUP BY categoria.nome_categoria
ORDER BY total_produtos DESC;

-- Formas de pagamentos mais utilizadas
SELECT forma_pagamento.tipo_pagamento, COUNT(pedido.id_pedido) as total_pagamentos
FROM forma_pagamento
INNER JOIN pedido ON forma_pagamento.id_pagamento = pedido.id_pagamento
GROUP BY forma_pagamento.tipo_pagamento
ORDER BY total_pagamentos ASC;

-- Tipos de entrega mais comum
SELECT tipo_entrega.tipo_entrega, COUNT(pedido.id_pedido) AS total_entrega 
FROM tipo_entrega 
INNER JOIN pedido ON tipo_entrega.id_tipo_entrega = pedido.id_tipo_entrega
GROUP BY tipo_entrBga.tipo_entrega
ORDER BY total_entrega ASC;

-- Clientes sem pedidos
SELECT cliente.id_cliente, cliente.nome FROM cliente
LEFT JOIN pedido
ON cliente.id_cliente = pedido.id_cliente
WHERE pedido.id_pedido IS NULL;

-- Exercícios
SELECT produto.nome_produto, estoque.quantidade, estoque.quantidade_minima
FROM produto
LEFT JOIN estoque
ON estoque.id_produto = produto.id_produto
WHERE estoque.quantidade < estoque.quantidade_minima
ORDER BY quantidade_minima DESC;

SELECT tipo_pagamento
FROM forma_pagamento
WHERE ativo = TRUE;

SELECT id_pedido, data_venda, status_venda
FROM pedido
WHERE status_venda = 'Pendente';
-- WHERE status_venda LIKE 'e%'; 

SELECT nome, nome _social
FROM cliente
WHERE nome_social IS NOT NULL;
SELECT COUNT(nome_social) FROM cliente;

SELECT p.nome_produto, c.nome_categoria
FROM produto p 
JOIN categoria c ON p.id_categoria = c.id_categoria
WHERE c.id_categoria = 2;

SELECT nome, ativo
FROM cliente
WHERE ativo = false;

SELECT nome_produto, valor_custo
FROM produto 
WHERE valor_custo < 150;

SELECT cargo, COUNT(*) AS total_funcionarios
FROM funcionario
GROUP BY cargo;

SELECT c.nome, e.logradouro, e.numero, e.cidade, e.uf
FROM cliente c
JOIN endereco e ON c.id_cliente = e.id_cliente
WHERE e.principal = TRUE;

SELECT e.uf, COUNT(*) AS total_principal
FROM cliente c
JOIN endereco e ON c.id_cliente = e.id_cliente
WHERE e.principal = TRUE
GROUP BY uf;

SELECT id_cliente, COUNT(*) AS total_pedidos
FROM pedido
GROUP BY id_cliente
ORDER BY total_pedidos DESC;

SELECT cat.nome_categoria, SUM(ip.valor_total) AS total_vendido
FROM item_pedido ip
JOIN produto p ON ip.id_produto = p.id_produto
JOIN categoria cat ON p.id_categoria = cat.id_categoria
GROUP BY cat.nome_categoria;

SELECT DISTINCT c.nome, p.data_entrega
FROM cliente c 
JOIN pedido p ON c.id_cliente = p.id_cliente
WHERE p.status_venda = 'Entregue'
AND p.data_entrega BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE();

SELECT cargo, COUNT(*) AS total
FROM funcionario
WHERE ativo = TRUE
GROUP BY cargo;

SELECT AVG(valor_total_pedido) AS valor_medio_pedido
FROM pedido;

SELECT status_venda, COUNT(*) AS total
FROM pedido
GROUP BY status_venda;

SELECT YEAR(data_venda) AS ano, SUM(valor_total_pedido) AS total_vendas
FROM pedido
GROUP BY ano
ORDER BY ano;

SELECT nome_produto, valor_venda - valor_custo AS margem_lucro
FROM produto
ORDER BY margem_lucro DESC 
LIMIT 10;

SELECT nome_funcionario, data_nascimento
FROM funcionario 
WHERE MONTH(data_nascimento) = MONTH(CURDATE());

SELECT c.nome, COUNT(cont.id_contato) AS total_contatos
FROM cliente c
JOIN contato cont ON c.id_cliente = cont.id_cliente
GROUP BY c.nome
HAVING total_contatos > 3;

SELECT id_pedido, observacoes
FROM pedido
WHERE observacoes LIKE '%atraso%';

SELECT nome_produto, data_cadastro
FROM produto
WHERE data_cadastro >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

SELECT f.nome_fornecedor, COUNT(p.id_produto) AS total_produtos
FROM fornecedor f
JOIN produto p ON f.id_fornecedor = p.id_fornecedor
GROUP BY f.nome_fornecedor
HAVING total_produtos > 5;

SELECT id_pedido, valor_total_pedido
FROM pedido
WHERE valor_total_pedido > (SELECT AVG(valor_total_pedido) FROM pedido);

SELECT c.id_Cliente, c.nome
FROM cliente c
WHERE NOT EXISTS (
	SELECT p.id_produto
	FROM produto p
    WHERE p.id_categoria = 1
    AND NOT EXISTS (
		SELECT 1
        FROM pedido pd
        JOIN item_pedido ip ON pd.id_pedido = ip.id_pedido
        WHERE pd.id_cliente = c.id_cliente
        AND ip.id_produto = p.id_produto
	)
);

SELECT p.nome_produto, SUM(ip.quantidade) AS total_vendido
FROM item_pedido ip
JOIN pedido pd ON ip.id_pedido = pd.id_pedido
JOIN produto p ON ip.id_produto = p.id_produto
WHERE pd.data_venda >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
GROUP BY p.nome_produto
ORDER BY total_vendido DESC
LIMIT 5;

SELECT c.id_cliente, c.nome
FROM cliente c
WHERE NOT EXISTS (
	SELECT cat.id_categoria
	FROM categoria cat
    WHERE cat.ativa = TRUE
    AND NOT EXISTS (
		SELECT 1 
        FROM pedido pd
        JOIN item_pedido ip ON pd.id_pedido = ip.id_pedido
        JOIN produto p ON ip.id_produto = p.id_produto
        WHERE pd.id_cliente = c.id_cliente
        AND p.id_categoria = cat.id_categoria
	)
);

SELECT c.nome_categoria,
	(SELECT AVG(valor_total)
	FROM item_pedido ip
    JOIN produto p ON ip.id_produto = p.id_produto
    WHERE p.id_categoria = c.id_categoria) AS media_valor_item
FROM categoria c;

SELECT p.nome_produto
FROM produto p 
LEFT JOIN item_pedido ip ON p.id_produto = ip.id_produto
LEFT JOIN pedido pd ON ip.id_pedido = pd.id_pedido
WHERE pd.data_venda IS NULL OR pd.data_venda < DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY p.nome_produto;

SELECT c.nome, SUM(p.valor_total_pedido) AS total_gasto
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome
ORDER BY total_gasto DESC
LIMIT 10;

SELECT DAYNAME(data_venda) AS dia_semana, SUM(valor_total_pedido) AS total_vendido
FROM pedido
GROUP BY dia_semana
ORDER BY FIELD(dia_semana, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

SELECT id_pedido, data_venda, data_entrega, DATEDIFF(data_entrega, data_venda) AS dias_entrega
FROM pedido
WHERE DATEDIFF(data_entrega, data_venda) > 6
ORDER BY dias_entrega DESC;

CALL sp_listar_clientes_ativos;
CALL sp_listar_valores;	
SELECT * FROM vw_produtos_categorias;
