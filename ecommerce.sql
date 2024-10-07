create database ecommerce;
use ecommerce;

create table produtos(
id_prod int(5) primary key auto_increment not null,
nome_prod varchar(100) not null,
descricao text,
modelo varchar(50),
id_categoria int(5),
id_fabricante int(5)
);


create table clientes(
id_cliente int(5) primary key auto_increment not null,
nome varchar(100) not null,
cpf varchar(11),
telefone varchar(50),
sexo enum('F','M'),
cadastro datetime
);


create table pedidos(
num_pedido int(5)primary key auto_increment not null,
data_ datetime,
stats varchar(50),
id_cliente int(5),
constraint foreign key (id_cliente) references clientes(id_cliente)
);


create table pedido_item(
idtem_pedido int(5)primary key auto_increment not null,
num_pedido int(5) not null,
qtde int(5) not null,
valor_unit decimal(10,2),
total decimal(10,2),
id_prod int(5),
constraint foreign key (num_pedido) references pedidos(num_pedido),
constraint foreign key (id_prod) references produtos(id_prod)
);


create table estoque_produtos(
id_estoque int(5)not null auto_increment,
quantidade int(5) not null,
quant_min int(5),
id_prod int(5),
constraint primary key (id_estoque),
constraint foreign key (id_prod) references produtos(id_prod)
);


	insert into clientes values (null,'João','02102202324','6799999999','M',now());
    insert into clientes values (null,'Tadeu','02102202366','6799999999','M',now());
    insert into clientes values (null,'Francisco','02102202399','6799999999','M',now());
    insert into clientes values (null,'Maria','02102202377','6799999999','F',now());
    insert into clientes values (null,'Antonia','02102202388','6799999999','F',now());
   
    insert into produtos values (null,'Notebook Dell','Core i5,8GB,SDD 240GB','Inspirion 1500',null,null);
    insert into produtos values (null,'Notebook Acer','Core i5,8GB,SDD 240GB','Aspire T',null,null);
    insert into produtos values (null,'Notebook Asus','Core i5,8GB,SDD 240GB','A95Z',null,null);
    insert into produtos values (null,'Notebook Apple','Core i7, 16GB, SDD 512GB','BookPRo',null,null);
    insert into produtos values (null,'Notebook Positivo','Celerom,4GB,HD 1TB','POS8080',null,null);
    insert into produtos values (null,'Placa-Mãe ASUS','Onboard','P',null,null);
    insert into produtos values (null,'Processador AMD','4.2Ghz','Ryzen5',null, null);
    insert into produtos values (null,'Placa de Vídeo RADEON','8GB','RX5500',null,null);
    insert into produtos values (null,'Fonte Corsair','Selo 80plus','CX1200W',null, null);
    
    select * from produtos;

    insert into estoque_produtos values (null,80,5,1);
    insert into estoque_produtos values (null,44,5,9);
    insert into estoque_produtos values (null,55,5,8);
    insert into estoque_produtos values (null,36,5,7);
    insert into estoque_produtos values (null,49,5,6);
    insert into estoque_produtos values (null,100,5,1);
    insert into estoque_produtos values (null,100,5,2);
    insert into estoque_produtos values (null,100,5,3);
    insert into estoque_produtos values (null,100,5,4);
    insert into estoque_produtos values (null,100,5,5);
        
        
    


