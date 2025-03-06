/*DDL - CREATE DATABASE - Comando de Definição de Estrutura*/
CREATE DATABASE biblioteca_uirapuru;

/*Diz ao SGBDR que vamos usar este banco de dados daqui para frente*/
USE biblioteca_uirapuru;

/*1º Comando: create*/
CREATE TABLE livros (
id INT PRIMARY KEY,
titulo VARCHAR(255),
autor VARCHAR(255),
preco DECIMAL(10, 2),
editora VARCHAR(255),
genero VARCHAR(255),
ano_publicacao int
);

/*DROP - Removendo uma coluna da tabela*/
ALTER TABLE livros DROP genero;
ALTER TABLE livros DROP editora;
----------------------------------
/*ADD - Comando para adicionar uma coluna em uma tabela*/
ALTER TABLE livros ADD CNPJ INT;

/*Alterar o tipo de Dado de uma coluna, exemplo:
em 2025, o campo de CNPJ passará a ser alfanumerico
 então ele não pode ser INT, Vamos alterar*/
 
ALTER TABLE livros MODIFY CNPJ VARCHAR(25);
 
DESC livros;
/*Alterar a coluna, para impedir que ela seja nula,
ou seja, ea vai precisar ter registros, senão dará erro*/
ALTER TABLE livros MODIFY titulo VARCHAR(255) NOT NULL;
ALTER TABLE livros MODIFY autor VARCHAR(255) NOT NULL;


DESC livros;


ALTER TABLE livros DROP CNPJ;

SELECT * FROM livros;


/*Inserir múltiplos registros*/
INSERT INTO livros (id, titulo, autor) VALUES
(1, 'Quebrando a cabeça com Java', 'Josefino'),
(2, 'Java 8', 'Peter'),
(3, 'Google Android', 'Ricardo');

SELECT * FROM livros;

UPDATE livros
SET preco = 99.99
WHERE id = 1;

/*remover todos os registos da tabela
truncate - deleta tudo da tabela*/
TRUNCATE TABLE livros;
SELECT * FROM livros;
/*APAGA A TABELA no banco de dados*/
DROP table livros;
SELECT * FROM livros;