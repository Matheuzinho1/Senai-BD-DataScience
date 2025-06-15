USE comercio;

-- Mexendo na tabela 'genero'
ALTER TABLE genero
ADD ativo BOOLEAN DEFAULT TRUE;

ALTER TABLE genero
MODIFY descrição VARCHAR(150) NOT NULL;

ALTER TABLE genero 
CHANGE descricao nome_genero VARCHAR(100) NOT NULL;

ALTER TABLE genero
DROP COLUMN ativo;

SELECT * FROM genero;

-- Mexendo na tabela 'funcionario'
ALTER TABLE funcionario 
ADD CONSTRAINT fk_funcionario_genero FOREIGN KEY (id_genero) REFERENCES genero(id_genero);

ALTER TABLE funcionario 
DROP COLUMN cargoPRIMARY;

ALTER TABLE funcionario
CHANGE funcao cargo VARCHAR(30) NOT NULL;

INSERT INTO funcionario(nome_funcionario, nome_social, data_nascimento, data_admissao, cargo, ativo) VALUES ('Matheus', '', '2008-11-16', '2025-03-05', 'Teste', true);
INSERT INTO funcionario(id_genero) VALUES (1); 

SELECT * FROM funcionario;

UPDATE funcionario 
SET nome_funcionario = 'Matheus'
WHERE id_funcionario = 1; 

UPDATE funcionario 
SET cargo = 'Teste3'
WHERE nome_funcionario LIKE '%Matheus%';

DELETE FROM funcionario
WHERE id_funcionario = 1;

DELETE FROM funcionario
WHERE nome_funcionario LIKE '%s';