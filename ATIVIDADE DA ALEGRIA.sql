# Criar o diagrama, criar banco com as tabelas,  criar as queries de inserção, consulta, edição e exclusão.
# Efetuar os relacionamentos quando necessários, criar outras tabelas se necessário (Ex. Cidades)

create database empresa;
Use empresa;

create table endereco (
  id_endereco int(6) primary key auto_increment,
  Logradouro varchar(30),
  numero int(4),
  bairro varchar(20),
  cidade varchar(20),
  estado varchar(20),
  pais varchar(10)
);
insert into endereco(Logradouro,numero,bairro,cidade,estado,pais) values 
('Rua Bahia','2020','Centro','Campo Grande','Mato Grosso do Sul','Brasil'),
('Av Ceará','234','Santa fé','Campo Grande','Mato Grosso do Sul','Brasil'),
('Rua Calogeras','675','Centro','Campo Grande','Mato Grosso do Sul','Brasil'),
('Rua ladario','456','Santo Amaro','Campo Grande','Mato Grosso do Sul','Brasil'),
('Av Julio de castilho ','876','Jardim Imá','Campo Grande','Mato Grosso do Sul','Brasil');




create table cadastro_de_clientes (
  id_cliente int(5) primary key auto_increment,
  Regime_de_tribulação varchar(10)not null,
  imagem blob,
  Nome varchar(40)not null,
  CNPJ varchar(14),
  cpf int(11),
  rg int(8),
  id_endereco int,
  foreign key (id_endereco) references endereco (id_endereco),
  id_login int ,
  foreign key (id_login) references login (id_login),
  Email varchar(30)not null,
  Email_danfe varchar(30),
  Email_Cobranca varchar(30),
  Email_LojaVirtual Varchar(30),
  Telefone_Comercial int(14) not null,
  Ramal int(4),
  Telefone_residencial int(14),
  Fax int(14),
  Telefone_movel int(14) not null,
  SituaçãoCMS varchar(15),
  ins_estadual int(9),
  ins_suframa int(10),
  sexo enum('M','F'),
  Data_nascimento date,
  Transportadora1 varchar(15),
  Transportadora2 varchar(15),
  Tabela_preco varchar(20),
  frete_padrao varchar(20),
  situação_cadastro varchar(10)
);

insert into cadastro_de_clientes(Regime_de_tribulação,imagem,Nome,CNPJ,cpf,rg,Email,Email_danfe,Email_Cobranca,Email_LojaVirtual,Telefone_Comercial,Ramal,Telefone_residencial,Fax,
Telefone_movel,SituaçãoCMS,ins_estadual,ins_suframa,sexo,Data_nascimento,Transportadora1,Transportadora2,Tabela_preco,frete_padrao,situação_cadastro) values 
('fisico','imagem','Gustavo','01987654321','00300300310','2065412','gthransa@gmail.com','gthransa@gmail.com','gthransa@gmail.com','gthransa@gmail.com','67988888888','1','67988888888','67988888888','67988888888','legal',
'101321351','1561564','M','1989-09-12','caminhao 1','caminhao 2','real','correios','aprovado'),
('fisico','imagem','Maria','01987654321','00300300410','2065412','maria@gmail.com','maria@gmail.com','maria@gmail.com','maria@gmail.com','67981000000','2','67981000000','67981000000','679810000004','legal',
'101321351','1561564','M','1989-09-12','caminhao 1','caminhao 2','real','correios','aprovado'),
('fisico','imagem','José','01987654321','0030030410','2065412','jose@gmail.com','jose@gmail.com','jose@gmail.com','jose@gmail.com','67981111111','3','67981111111','67981111111','67981111111','legal',
'101321351','1561564','M','1989-09-12','caminhao 1','caminhao 2','real','correios','aprovado'),
('fisico','imagem','Fernanda','01987654321','00300300510','2065412','fernanda@gmail.com','fernanda@gmail.com','fernanda@gmail.com','fernanda@gmail.com','67981222222','4','67981222222','67981222222','67981222222','legal',
'101321351','1561564','M','1989-09-12','caminhao 1','caminhao 2','real','correios','aprovado'),
('fisico','imagem','Roberto','01987654321','00300300710','2065412','roberto@gmail.com','roberto@gmail.com','roberto@gmail.com','roberto@gmail.com','67981333333','5','67981333333','67981333333','67981333333','legal',
'101321351','1561564','M','1989-09-12','caminhao 1','caminhao 2','real','correios','aprovado');

create table login (
  id_login int primary key auto_increment,
  username varchar(10),
  senha varchar(10)
);

insert into login (username,senha) values
('98883009','416112'),
('41234343','423421'),
('66236346','463562'),
('87878462','675645');

------------------------------------------------------------------------------------------------------------------


select * from cadastro_de_clientes ;
select * from endereco ;
select * from login ;

select nome,cpf,email,sexo,Data_nascimento,situação_cadastro from cadastro_de_clientes ;


select cadastro_de_clientes.nome,endereco.cidade,endereco.estado from cadastro_de_clientes
inner join endereco on endereco.id_endereco=endereco.id_endereco;

select cadastro_de_clientes.nome,login.username,login.senha from cadastro_de_clientes
inner join login on login.id_login =login.id_login;

select * from login
where id_login = '3';

update login
set username = 'cabrita'
where id_login ='2';

update login
set username = 'robertinho'
where id_login ='3';

update login
set username = 'joãotesta'
where id_login ='4';

select * from login;


update cadastro_de_clientes
set nome = 'João'
where id_cliente ='2';

update cadastro_de_clientes
set nome = 'Maria'
where id_cliente ='3';

update cadastro_de_clientes
set nome = 'Robertinho'
where id_cliente ='4';

update cadastro_de_clientes
set nome = 'Luan'
where id_cliente ='5';

delete from cadastro_de_clientes
where id_cliente ='5';

delete from cadastro_de_clientes
where id_cliente ='4';



alter table endereco
add column Cep int first;

alter table endereco
drop column cep;

alter table endereco
add column Cep int ;


update empresa.endereco set Cep = '79110160' where (id_endereco = '1');
update empresa.endereco set Cep = '79125215' where (id_endereco = '2');
update empresa.endereco set Cep = '89764651' where (id_endereco = '3');
update empresa.endereco set Cep = '16549684' where (id_endereco = '4');
update empresa.endereco set Cep = '41654841' where (id_endereco = '5');
update empresa.endereco set Cep = '41654684' where (id_endereco = '6');

select * from endereco;


select cadastro_de_clientes.nome,login.username,login.senha,endereco.cidade,endereco.estado from cadastro_de_clientes
inner join login on login.id_login =login.id_login
inner join endereco on endereco.id_endereco=endereco.id_endereco;









