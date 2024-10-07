create database banco;
use banco;

create table cidade (
id_cidade int auto_increment,
cidade varchar(50) not null,
primary key (id_cidade)
);

insert into cidade(cidade) values ('Campo Grande');
select * from cidade;

create table estado(
id_estado int auto_increment,
estado varchar(50) not null,
primary key (id_estado)
);

insert into estado(estado) values ('Mato Grosso do Sul');
select * from cidade;

create table religiao(
id_religiao int auto_increment,
religiao varchar(10),
primary key (id_religiao)
);

insert into religiao(religiao) values ('Cátolico');
select * from religiao ;
update banco.religiao set religiao = 'católico' where (id_religiao = '1');

create table genero(
id_genero int auto_increment,
genero varchar (10),
primary key (id_genero)
);

insert into genero(genero) values ('Hétero');
select * from genero;

create table estadoCivil(
id_estadoCivil int auto_increment,
estado_civil varchar(10) not null,
primary key (id_estadoCivil)
);

insert into estadoCivil(estado_civil) values ('Solteiro');

select * from estadoCivil;
 
create table raca(
id_raca int auto_increment,
raca varchar(50),
primary key (id_raca)
);

insert into raca(raca) values ('Branco');
select * from raca ;

select cidade.cidade,estado.estado,estadocivil.estado_civil,genero.genero,religiao.religiao from banco.banco
inner join cidade on cidade.id_cidade = cidade.id_cidade
inner join estado on estado.id_estado = estado.id_estado
inner join estadocivil on estadocivil.id_estadoCivil = estadocivil.id_estadoCivil
inner join genero on genero.id_genero = genero.id_genero
inner join religiao on religiao.id_religiao = religiao.id_religiao;


--------------------------------------------------------------------
 
create table agencia (
 id_agencia int primary key auto_increment,
 endereco varchar(40),
 estado int,
 cidade int,
 foreign key (estado) references estado(id_estado),
 foreign key (cidade) references cidade(id_cidade)
);

create table cliente(
id_cliente int primary key auto_increment,
nome varchar(50) not null,
cpf varchar(11) not null,
rg varchar(10) not null,
dataNascimento date not null,
telefone varchar(14) not null,
endereco varchar(50) not null,
);

create table  operacao (
    id_operacao int primary key auto_increment,
    id_agencia int,
    id_cliente int,
    valor float,
    tipo enum('saque', 'deposito'),
    data_hora timestamp default current_timestamp,
    foreign key (id_agencia) references agencia(id_agencia),
    foreign key (id_cliente) references cliente(id_cliente)
);


create table saque(
id_saque int primary key auto_increment,
id_operacao int,
id_agencia int,
id_cliente int,
valor float,
foreign key (id_agencia) references agencia(id_num),
foreign key (id_cliente) references cliente(id_cliente)
);

create table saldo (
    id_saldo int primary key,
    id_cliente int,
    saldo float,
    foreign key (id_cliente) references cliente(id_cliente)
);


create table deposito(
id_deposito int primary key auto_increment,
deposito float,
id_operacao int,
id_agencia int,
id_cliente int,
foreign key (id_operacao) references saque(id_operacao),
foreign key (id_agencia) references agencia(id_num),
foreign key (id_cliente) references cliente(id_cliente)
);

delimiter $$
create trigger atualizar_saldo
after insert on operacao
for each row
begin
    if new.tipo = 'deposito' then
        update saldo
        set saldo = saldo + new.valor
        where id_cliente = new.id_cliente;
    elseif new.tipo = 'saque' then
        update saldo
        set saldo = saldo - new.valor
        where id_cliente = new.id_cliente;
    end if;
end $$
delimiter ;



insert into operacao (id_agencia, id_cliente, valor, tipo)
values (1, 1, 100, 'deposito');

-- exemplo de consulta para obter o saldo de um cliente
select s.saldo
from saldo s
join cliente c on s.id_cliente = c.id_cliente
where c.id_cliente = 1;
