-- 1. CRIAR E USAR O BANCO DE DADOS
DROP DATABASE IF EXISTS empresa;
CREATE DATABASE empresa;
USE empresa;

-- 2. CRIAR A TABELA FORNECEDOR
DROP TABLE IF EXISTS Fornecedor;

CREATE TABLE Fornecedor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(256) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL UNIQUE,
    endereco VARCHAR(255) NOT NULL
);

-- 3. INSERIR OS DADOS INICIAIS
INSERT INTO Fornecedor (nome, telefone, endereco) VALUES
('Logística Brasil Ltda', '(11) 98765-4321', 'Av. Paulista, 1000 - São Paulo, SP'),
('Distribuidora Norte-Sul', '(21) 2555-1234', 'Rua das Marrecas, 45 - Rio de Janeiro, RJ'),
('Tech Componentes Eletrônicos', '(31) 3444-9876', 'Av. Antônio Carlos, 6627 - Belo Horizonte, MG'),
('Embalagens Sustentáveis S.A.', '(41) 99111-2233', 'Rua das Flores, 123 - Curitiba, PR'),
('Atacadista Central', '(61) 3222-0000', 'SCS Quadra 4, Bloco A - Brasília, DF');


-- ==========================================
-- EXERCICIOS DE FORNECEDOR
-- ==========================================

USE empresa;

-- EXERCICIO 1: INSERCAO E RESTRICOES
INSERT INTO Fornecedor (nome, telefone, endereco) VALUES
('Suprimentos Globais', '(11) 91111-2222', 'Av. das Nações, 500 - São Paulo, SP');

-- EXERCICIO 2: FILTRO POR INTERVALO
SELECT *
FROM Fornecedor
WHERE id BETWEEN 3 AND 5;

-- EXERCICIO 3: SELECAO DE VALORES ESPECIFICOS
SELECT *
FROM Fornecedor
WHERE id IN (1, 2, 4);

-- EXERCICIO 4: ORDENACAO POR POSICAO
SELECT *
FROM Fornecedor
ORDER BY 2 DESC;

-- EXERCICIO 5: ORDENACAO OCULTA
SELECT nome, endereco
FROM Fornecedor
ORDER BY id DESC;

-- EXERCICIO 6: INSERCAO PADRAO
INSERT INTO Fornecedor (nome, telefone, endereco) VALUES
('Paraná Madeiras', '(41) 3322-1111', 'Rua Chile, 1500 - Curitiba, PR');

-- EXERCICIO 7: INSERCAO MULTIPLA
INSERT INTO Fornecedor (nome, telefone, endereco) VALUES
('Alimentos Nordeste', '(81) 9988-7766', 'Av. Boa Viagem, 400 - Recife, PE'),
('Metais Sudeste', '(11) 2233-4455', 'Rua das Indústrias, 80 - Osasco, SP'),
('Vidros do Sul', '(51) 3211-0000', 'Av. Farrapos, 1010 - Porto Alegre, RS');

-- EXERCICIO 8: INSERCAO CONDICIONAL / NULOS
-- INSERT INTO Fornecedor (nome, telefone, endereco) VALUES
-- ('Artesanatos da Bahia', NULL, 'Rua do Passo, 12 - Salvador, BA');

-- EXERCICIO 9: SELECAO SIMPLES
SELECT nome, telefone
FROM Fornecedor;

-- EXERCICIO 10: FILTRO DE TEXTO EXATO
SELECT *
FROM Fornecedor
WHERE nome = 'Metais Sudeste';

-- EXERCICIO 11: FILTRO DE TEXTO PARCIAL - LIKE
SELECT *
FROM Fornecedor
WHERE endereco LIKE '%SP%';

-- EXERCICIO 12: FILTRO POR ID
SELECT *
FROM Fornecedor
WHERE id = 3;

-- EXERCICIO 13: OPERADORES DE COMPARACAO
SELECT *
FROM Fornecedor
WHERE id >= 4;

-- EXERCICIO 14: ORDENACAO ASCENDENTE
SELECT nome, endereco
FROM Fornecedor
ORDER BY nome ASC;

-- EXERCICIO 15: FILTRO COMPOSTO E ORDENACAO
SELECT *
FROM Fornecedor
WHERE id BETWEEN 2 AND 5
ORDER BY id DESC;
