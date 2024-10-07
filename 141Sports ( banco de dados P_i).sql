CREATE DATABASE 141sports;
USE 141sports;

## ------- DADOS CLIENTES ENDEREÇOS CIDADES E ESTADOS ----------------##
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf varchar(11),
    data_nascimento DATE not null,
    sexo ENUM('M', 'F'),
    email VARCHAR(100) not null,
    senha VARCHAR(255),
    telefone int,
    senha varchar(20) not null,
    id_cep int(8) not null 
    
);
CREATE TABLE Endereco (
    id_cep varchar(9) primary key,
    id_cidade int,
    id_estado int,
    nome_logradouro varchar(50) not null,
    numero int(10),
    bairro int(10) not null,
    complemento VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
CREATE TABLE cidade (
	id_cidade int primary key,
    cidade varchar (100) not null,
    id_estado int foreign key
    );
create table estado (
    id_estado int primary key,
    estado varchar(100) not null
    );
    
##------------------ PRODUTOS , CATEGORIAS , ESTOQUE , PEDIDOS ----##
CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    fornecedor varchar(30) not null,
    nome_produto VARCHAR(100) NOT NULL,
    imagem blob,
    valor varchar(5) not null,
    descricao TEXT,
    tamanho ENUM('P', 'M', 'G', 'GG')
);
create table categoria (
    id_categoria int primary key,
    nome_categoria varchar(40)
    );
create table estoque (
    id_estoque int primary key auto_increment,
    id_produto foreign key,
    quantidade int not null
    );
CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL CHECK (valor_total >= 0),
    forma_pagamento ENUM('dinheiro', 'cartao', 'boleto'),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
##-------------------- SUPORTE CONTATO  ---------------##
CREATE TABLE suporte ( 

    id_suporte INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    nome_cliente VARCHAR(100),
    mensagem TEXT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) 
);
CREATE TABLE contato (
  id_contato int primary key auto_increment,
  nome varchar(100) not null,
  email varchar(100) not null ,
  mensagem varchar(300) not null
);

##---------------- funcionarios --------------------##
 create table funcionarios (
email varchar(100) primary key not null,
nome varchar (100) not null,
senha varchar(20) not null,
telefone int
);                  



