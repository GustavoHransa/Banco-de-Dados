create database ecommerce;
use ecommerce;
create table  produtos(id_prod char(5), nome_prod varchar(100) not null, descricao text, modelo varchar(50), id_categoria int(5), id_fabricante int(5));
create table clientes(id_cli char(5),nome varchar(100) not null,cpf char(11),telefone char(12),sexo enum('F','M'),cadastro datetime,constraint primary key (id_cli));
create table pedidos(
      num_pedido int(5) auto_increment not null,
      data_ datetime,
      status_ varchar(50),
      id_cli int(5),
      constraint primary key (num_pedido),
      constraint foreign key (id_cli) references clientes(id_cli));