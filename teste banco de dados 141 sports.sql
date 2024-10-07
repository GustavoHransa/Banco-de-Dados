CREATE DATABASE 141sports;
USE 141sports;

CREATE TABLE cliente (
    id_cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(30),
    genero VARCHAR(25),
    senha VARCHAR(20) NOT NULL
);
INSERT INTO cliente (id_cpf, nome, data_nascimento, email, telefone, genero, senha)
VALUES ('12345678901', 'John Doe', '1990-01-01', 'john.doe@example.com', '1234567890', 'Masculino', 'password123');

CREATE TABLE endereco (

    id_cpf varchar(20),
    FOREIGN KEY (id_cpf) REFERENCES cliente(id_cpf),
    cep VARCHAR(20),
    id_cidade INT,
    id_estado INT,
    tipo_logradouro VARCHAR(50) NOT NULL,
    nome_logradouro VARCHAR(100) NOT NULL,
    bairro VARCHAR(20) NOT NULL,
    complemento VARCHAR(50),
    numero INT(10)
);
insert into endereco(id_cpf,cep,id_cidade,id_estado,tipo_logradouro,nome_logradouro,bairro,complemento,numero)
values('','79100160','1','1','rua','Afonso Pena','Centro','casa','350');

CREATE TABLE estado (
    id_estado INT PRIMARY KEY,
    estado VARCHAR(100) NOT NULL
);
INSERT INTO estado (id_estado, estado)
VALUES
  (1, 'Acre'),
  (2, 'Alagoas'),
  (3, 'Amapá'),
  (4, 'Amazonas'),
  (5, 'Bahia'),
  (6, 'Ceará'),
  (7, 'Espírito Santo'),
  (8, 'Goiás'),
  (9, 'Maranhão'),
  (10, 'Mato Grosso'),
  (11, 'Mato Grosso do Sul'),
  (12, 'Minas Gerais'),
  (13, 'Pará'),
  (14, 'Paraíba'),
  (15, 'Paraná'),
  (16, 'Pernambuco'),
  (17, 'Piauí'),
  (18, 'Rio de Janeiro'),
  (19, 'Rio Grande do Norte'),
  (20, 'Rio Grande do Sul'),
  (21, 'Rondônia'),
  (22, 'Roraima'),
  (23, 'Santa Catarina'),
  (24, 'São Paulo'),
  (25, 'Sergipe'),
  (26, 'Tocantins'),
  (27, 'Distrito Federal');

CREATE TABLE cidade (
    id_cidade INT PRIMARY KEY,
    cidade VARCHAR(100) NOT NULL,
    id_estado INT,
    FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
);
INSERT INTO cidade (id_cidade,cidade,id_estado)
VALUES
  (1,'Rio Branco', 1),
  (2,'Maceió', 2),
  (3,'Macapá', 3),
  (4,'Manaus', 4),
  (5,'Salvador', 5),
  (6,'Fortaleza', 6),
  (7,'Vitória', 7),
  (8,'Goiânia', 8),
  (9,'São Luís', 9),
  (10,'Cuiabá', 10),
  (11,'Campo Grande', 11),
  (12,'Belo Horizonte', 12),
  (13,'Belém', 13),
  (14,'João Pessoa', 14),
  (15,'Curitiba', 15),
  (16,'Recife', 16),
  (17,'Teresina', 17),
  (18,'Rio de Janeiro', 18),
  (19,'Natal', 19),
  (20,'Porto Alegre', 20),
  (21,'Porto Velho', 21),
  (22,'Boa Vista', 22),
  (23,'Florianópolis', 23),
  (24,'São Paulo', 24),
  (25,'Aracaju', 25),
  (26,'Palmas',26),
  (27,'Brasília', 27);

CREATE TABLE catalogo (
    id INT PRIMARY KEY,
    nome_catalogo VARCHAR(40)
);

CREATE TABLE venda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT NOT NULL,
    id_venda_status VARCHAR(20)
);

CREATE TABLE produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fornecedor VARCHAR(30) NOT NULL,
    tamanho VARCHAR(1) NOT NULL,
    imagem BLOB,
    valor DECIMAL(10, 2) NOT NULL, -- Changed to decimal for better precision
    id_catalogo INT,
    nome_prod VARCHAR(40) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo(id)
);

CREATE TABLE estoque (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL
);

CREATE TABLE funcionario (
    email VARCHAR(100) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(20) NOT NULL,
    telefone INT,
    admin BOOLEAN NOT NULL
);

CREATE TABLE suporte (
    id_suporte INT PRIMARY KEY AUTO_INCREMENT,
    id_cpf VARCHAR(11)
);
CREATE TABLE contato (
    id_contato INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL, 
    email VARCHAR(100) NOT NULL,
    mensagem VARCHAR(300) NOT NULL
);

CREATE TABLE pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_venda INT NOT NULL
);



CREATE TABLE venda_status (
    id INT PRIMARY KEY AUTO_INCREMENT,
    stats VARCHAR(30)
);





