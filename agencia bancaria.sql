-- Cria um banco de dados com os seguintes tabelas:
-- Clientes, Agências, Cidade, Estado, Gênero, Raça, Religião, Saque, Depósito 
-- Na tabela clientes deve constar os dados  do cliente, Nome, CPF, RG, Data Nascimento, fone, endereço,
-- conectados nas tabelas Cidade, Estado, Gênero, Raça, Religião, Estado Civil e Agências. Também deverá 
-- constar o saldo, e o número da conta.

create database Agencia_Bancaria;
use Agencia_Bancaria;

create table cliente (
id_cliente int(10) primary key auto_increment,
cpf int(11),
nome varchar (30),
rg int(8),
nascimento date,
fone int(11),
sexo enum('M','F'),
id_endereco int not null,
foreign key (id_endereco) references endereco(id_endereco)
);
insert into cliente values ('00345722108','Gustavo Thiago Ribeiro Farina','2037996','1989-09-12','67981023394','M','1');

create table endereco (
id_endereco int(6) primary key auto_increment,
rua_avenida varchar(20),
numero int (5),
bairro varchar (10),
cep int(8),
id_cidade int not null,
foreign key (id_cidade) references cidades(id_cidade),
id_estado int not null,
foreign key (id_estado) references estados(id_estado)
);
 
insert into endereco values ('Av Afonso Pena','2020','Centro','79120232','1','1');



create table estado (
id_estado int primary key auto_increment not null,
estado varchar (20) not null
);
insert into estado (id_estado,estado) values
(null,'Mato Grosso do Sul');


create table cidade (
id_cidade int primary key auto_increment not null,
cidade varchar (40) not null,
id_estado int not null,
foreign key (id_estado) references estado(id_estado)
);

insert into cidade (id_cidade,cidade, id_estado) values
(null,'Campo Grande');

create table genero (
id_genero int(2)primary key auto_increment,
genero varchar(10)
);

insert into genero (genero) values ('Hétero');

create table raca (
id_raca int(2)primary key auto_increment,
raca varchar(10)
);

insert into raca (raca) values ('Branco');

create table religiao (
id_religiao int(2) primary key auto_increment,
religiao varchar(10)
);

insert into religiao (religiao) values('Catolico');

create table estado_civil (
id_estado_civil int(1) primary key auto_increment,
estado_civil varchar(10)
);

insert into estado_civil (estado_civil) values ('Solteiro');

-- Na tabela Agências, deverá constar o numero da agência, o endereço, interligados nas tabelas Cidade e Estado.



create table agencia (
id_agencia int(3) primary key auto_increment,
agencia varchar (40),
id_estado int not null,
foreign key (id_estado) references estados(id_estado)
);

insert into agencia (agencia,id_estado) values 
('Banco do Brasil - Julio de castilho','1'),
('Banco do Brasil - Afonso pena ','2'),
('Banco do Brasil - Marechal rondon','3'),
('Banco do Brasil - Rua bahia ','4'),
('Banco do Brasil - Centro','5');

CREATE TABLE contas (
    id_conta INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único para cada conta
    numero_conta VARCHAR(20) UNIQUE NOT NULL, -- Número da conta bancária
    tipo_conta ENUM('corrente', 'poupanca') NOT NULL, -- Tipo da conta (corrente ou poupança)
    id_agencia INT NOT NULL, -- Identificador da agência onde a conta está vinculada
    saldo DECIMAL(10,2) NOT NULL DEFAULT 0, -- Saldo atual da conta (inicializado com 0)
    data_abertura DATE NOT NULL, -- Data de abertura da conta
    id_cliente INT NOT NULL, -- Identificador do cliente dono da conta
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) -- Relaciona a conta ao cliente
);

insert into contas (numero_conta,tipo_conta,id_agencia,saldo,data_abertura,id_cliente) values 
('514225','corrente','1','25000','2024-05-25','1');



-- Na tabela Saque deverá constar o Id da operação, o Id da Agência, o Id da Conta do cliente, o valor do saque. Deverá ter uma trigger que efetue a subtração na conta do cliente.

-- Tabela Saque
-- Armazena as informações de cada saque realizado.
CREATE TABLE Saque (
    id_operacao INT AUTO_INCREMENT PRIMARY KEY, -- ID único para cada operação de saque
    id_agencia INT NOT NULL, -- ID da agência onde o saque foi realizado
    id_conta INT NOT NULL, -- ID da conta do cliente que realizou o saque
    valor DECIMAL(10,2) NOT NULL, -- Valor do saque em reais (10 dígitos, 2 casas decimais)
    data_saque TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Data e hora do saque
);

-- Trigger tr_atualiza_saldo
-- Atualiza o saldo da conta do cliente após cada saque.
CREATE TRIGGER tr_atualiza_saldo
AFTER INSERT ON Saque -- Acionada após a inserção de um novo registro em Saque
FOR EACH ROW -- Atua em cada linha inserida
BEGIN
    -- Atualiza o saldo da conta, subtraindo o valor do saque
    UPDATE Conta
    SET saldo = saldo - NEW.valor
    WHERE id_conta = NEW.id_conta;
END;

INSERT INTO Saque (id_agencia, id_conta, valor)
VALUES (1, 100, 500);

-- Na tabela Depósito deverá constar o Id da operação, o Id da Agência, o Id da Conta do cliente, o valor do saque. Deverá ter uma trigger que efetue a adição do valor na conta do cliente.



