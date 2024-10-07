create database pessoas_update;  
use pessoas_update;  
create table estados (
id_estado int primary key auto_increment not null,
estado varchar (100) not null
);
create table cidades (
id_cidade int primary key auto_increment not null,
cidade varchar (100) not null,
id_estado int not null,
foreign key (id_estado) references estados(id_estado)
);

insert into estados (estado) values
('Acre'),
('Alagoas'),
('Amazonas'),
('Bahia'),
('Ceará'),
('Distrito Federal'),
('Espírito Santo'),
('Goiás'),
('Maranhão'),
('Mato Grosso'),
('Mato Grosso do Sul'),
('Minas Gerais'),
('Pará'),
('Paraíba'),
('Paraná'),
('Pernambuco'),
('Piauí'),
('Rio de Janeiro'),
('Rio Grande do Norte'),
('Rio Grande do Sul'),
('Rondônia'),
('Roraima'),
('Santa Catarina'),
('São Paulo'),
('Sergipe'),
('Tocantins');
insert into cidades (cidade, id_estado) values
('Rio Branco', 1),
('Cruzeiro do Sul', 1),
('Senador Guiomard', 1),
('Tarauacá', 1),
('Feijó', 1);

insert into cidades (cidade, id_estado) values
('Maceió', 2),
('Arapiraca', 2),
('Rio Largo', 2),
('Penedo', 2),
('São Miguel dos Campos', 2);

insert into cidades (cidade, id_estado) values

('Manaus', 3),
('Parintins', 3),
('Itacoatiara', 3),
('Manacapuru', 3),
('Coari', 3);

insert into cidades (cidade, id_estado) values

('Salvador', 4),
('Feira de Santana', 4),
('Vitória da Conquista', 4),
('Camaçari', 4),
('Juazeiro', 4);

insert into cidades (cidade, id_estado) values

('Fortaleza', 5),
('Caucaia', 5),
('Juazeiro do Norte', 5),
('Maracanaú', 5),
('Sobral', 5);

insert into cidades (cidade, id_estado) values

('Brasília', 6),
('Taguatinga', 6),
('Ceilândia', 6),
('Aguas Claras', 6),
('Plano Piloto', 6);

insert into cidades (cidade, id_estado) values

('Vitória', 7),
('Vila Velha', 7),
('Cariacica', 7),
('Serra', 7),
('Cachoeiro de Itapemirim', 7);


insert into cidades (cidade, id_estado) values

('Goiânia', 8),
('Aparecida de Goiânia', 8),
('Anápolis', 8),
('Luziânia', 8),
('Rio Verde', 8);


insert into cidades (cidade, id_estado) values

('São Luís', 9),
('Imperatriz', 9),
('São José de Ribamar', 9),
('Caxias', 9),
('Timon', 9);


insert into cidades (cidade, id_estado) values

('Cuiabá', 10),
('Várzea Grande', 10),
('Rondonópolis', 10),
('Tangará da Serra', 10),
('Sinop', 10);


insert into cidades (cidade, id_estado) values

('Campo Grande', 11),
('Dourados', 11),
('Três Lagoas', 11),
('Corumbá', 11),
('Ponta Porã', 11);

insert into cidades (cidade, id_estado) values

('Belo Horizonte', 12),
('Uberlândia', 12),
('Contagem', 12),
('Juiz de Fora', 12),
('Montes Claros', 12);

insert into cidades (cidade, id_estado) values

('Belém', 13),
('Ananindeua', 13),
('Santarém', 13),
('Marabá', 13),
('Castanhal', 13);


insert into cidades (cidade, id_estado) values

('João Pessoa', 14),
('Campina Grande', 14),
('Santa Rita', 14),
('Patos', 14),
('Bayeux', 14);

insert into cidades (cidade, id_estado) values

('Curitiba', 15),
('Londrina', 15),
('Maringá', 15),
('Ponta Grossa', 15),
('Foz do Iguaçu', 15);

insert into cidades (cidade, id_estado) values 

('Recife', 16),
('Jaboatão dos Guararapes', 16),
('Olinda', 16),
('Caruaru', 16),
('Petrolina', 16);

insert into cidades (cidade, id_estado) values

('Teresina', 17),
('Parnaíba', 17),
('Picos', 17),
('Caxias', 17),
('Floriano', 17);


insert into cidades (cidade, id_estado) values

('Rio de Janeiro', 18),
('São Gonçalo', 18),
('Duque de Caxias', 18),
('Nova Iguaçu', 18),
('Niterói', 18);


insert into cidades (cidade, id_estado) values

('Natal', 19),
('Mossoró', 19),
('Parnamirim', 19),
('São Gonçalo do Amarante', 19),
('Ceará-Mirim', 19);


insert into cidades (cidade, id_estado) values

('Porto Alegre', 20),
('Caxias do Sul', 20),
('Pelotas', 20),
('Canos', 20),
('Santa Maria', 20);

insert into cidades (cidade, id_estado) values

('Porto Velho', 21),
('Ji-Paraná', 21),
('Ariquemes', 21),
('Cacoal', 21),
('Vilhena', 21);

insert into cidades (cidade, id_estado) values

('Boa Vista', 22),
('Rorainópolis', 22),
('Caracaraí', 22),
('Maués', 22),
('Alto Alegre', 22);


insert into cidades (cidade, id_estado) values

('Florianópolis', 23),
('Joinville', 23),
('Blumenau', 23),
('São José', 23),
('Criciúma', 23);

insert into cidades (cidade, id_estado) values

('São Paulo', 24),
('Guarulhos', 24),
('Campinas', 24),
('São Bernardo do Campo', 24),
('Santo André', 24);

insert into cidades (cidade, id_estado) values

('Aracaju', 25),
('Nossa Senhora do Socorro', 25),
('São Cristóvão', 25),
('Lagarto', 25),
('Itabaiana', 25);

insert into cidades (cidade, id_estado) values

('Palmas', 26),
('Araguaína', 26),
('Gurupi', 26),
('Porto Nacional', 26),
('Paraíso do Tocantins', 26);

create table sexos (
id_sexo int primary key auto_increment not null,
sexo varchar (9) not null
);

insert into sexos(sexo) values
('Feminino'),
('Maculino'),
('Outro');

create table nacionalidades (
id_nacionalidade int primary key auto_increment not null,
nacionalidade varchar (80) not null
);

insert into nacionalidades(nacionalidade) values
('Brasileira'),
('Estrangeira');

create table racas (
id_raca int primary key auto_increment not null,
raca varchar (80) not null
);

insert into racas(raca) values
('Negro'),
('Pardo'),
('Amarelo'),
('Indígena'),
('Branco');

create table escolaridades (
id_escolaridade int primary key auto_increment not null,
escolaridade varchar (80) not null
);

insert into escolaridades(escolaridade) values
('Analfabeto'),
('Ensino Fundamental incompleto'),
('Ensino Fundamental completo'),
('Ensino Médio incompleto'),
('Ensino Médio completo'),
('Superior'),
('Mestrado'),
('Doutorado');

create table estados_civil (
id_estado_civil int primary key auto_increment,
estado_civil varchar (50) not null
);

insert into estados_civil(estado_civil) values
('Solteiro'),
('Casado'),
('Viuvo'),
('Divorciado'),
('Separado');

create table cadastro_cliente (
id_cliente int primary key auto_increment not null,
cpf varchar (14) not null,
rg varchar (10) not null,
nome varchar (100) not null,
id_cidade int not null,
foreign key (id_cidade) references cidades(id_cidade),
id_sexo int not null,
foreign key (id_sexo) references sexos(id_sexo),
id_nacionalidade int not null,
foreign key (id_nacionalidade) references nacionalidades(id_nacionalidade),
telefone varchar (20) not null,
id_raca int not null,
foreign key (id_raca) references racas(id_raca),
id_escolaridade int not null,
foreign key (id_escolaridade) references escolaridades(id_escolaridade),
id_estado_civil int not null,
foreign key (id_estado_civil) references estados_civil(id_estado_civil)
);

insert into cadastro_cliente (cpf, rg, nome, id_cidade, id_sexo, id_nacionalidade, telefone, id_raca, id_escolaridade, id_estado_civil) VALUES

('201.023.031-10', '20242001-6', 'Agatha Marie', 51, 1, 1, '+55 (67) 99206-8038', 5, 3, 2),
('201.101.031-10', '20242001-4', 'Alysson Bryan', 51, 2, 1, '+55 (67) 99201-3010', 5, 5, 2),
('123.456.789-01', '12345678-9', 'João Pedro', 15, 2, 1, '+55 (41) 98765-4321', 1, 8, 1),
('987.654.321-09', '98765432-2', 'Maria Silva', 18, 1, 1, '+55 (21) 99765-4322', 2, 7, 2),
('456.789.012-34', '45678901-3', 'Pedro Henrique', 8, 2, 1, '+55 (62) 98765-4323', 3, 6, 3),
('654.321.098-76', '65432109-4', 'Ana Luiza', 7, 1, 1, '+55 (85) 98765-4324', 4, 5, 4),
('321.098.765-43', '32109876-5', 'Luiz Felipe', 12, 2, 1, '+55 (31) 98765-4325', 5, 4, 5),
('098.765.432-12', '09876543-6', 'Beatriz Souza', 4, 1, 1, '+55 (77) 98765-4326', 1, 3, 1),
('789.012.345-67', '78901234-7', 'Gabriel Oliveira', 2, 2, 2, '+55 (91) 98765-4327', 2, 2, 2),
('567.890.123-89', '56780127-8', 'Julia Martins', 11, 1, 1, '+55 (81) 98765-4328', 3, 1, 3),
('890.123.456-01', '89201345-9', 'Rafael Alves', 13, 2, 1, '+55 (43) 98765-4329', 4, 8, 4),
('234.567.890-23', '23456789-0', 'Isabella Lima', 19, 1, 1, '+55 (51) 98765-4330', 5, 7, 5),
('345.678.901-45', '34567890-1', 'Matheus Costa', 6, 2, 1, '+55 (71) 98765-4331', 1, 6, 1),
('678.901.234-56', '67890123-2', 'Larissa Santos', 22, 1, 1, '+55 (95) 98765-4332', 2, 5, 2),
('901.234.567-78', '90123456-3', 'Vinicius Ferreira', 26, 2, 1, '+55 (63) 98765-4333', 3, 4, 3),
('012.345.678-90', '01234567-4', 'Camila Pereira', 5, 1, 1, '+55 (27) 98765-4334', 4, 3, 4),
('456.789.012-34', '45678901-5', 'Felipe Castro', 3, 2, 2, '+55 (21) 98765-4335', 5, 2, 5),
('987.654.321-09', '98765432-6', 'Aline Souza', 17, 1, 1, '+55 (83) 98765-4336', 1, 1, 1),
('123.456.789-01', '12345678-7', 'João Victor', 20, 2, 1, '+55 (51) 98765-4337', 2, 8, 2),
('654.321.098-76', '65432109-8', 'Gabriela Silva', 10, 1, 1, '+55 (85) 98765-4338', 3, 4, 3);
 
set SQL_SAFE_UPDATES = 0;


## 01 -  Se a letra da cidade começar de A até M, Mudar o nome da cidade para “Abaixo de M”, e de M até o final do alfabeto mudar o nome para “Acima de M”;

update cidades set cidade = "Abaixo de M" where cidade >= 'A' and cidade < 'N';

update cidades set cidade = "Acima de M" where cidade >= 'N';

## 02 - Os estados, deixaremos de utilizar seu nome, e sim sua região, então verifique a região do estado e altere, ex.: se o estado for Mato Grosso do Sul, você irá alterar o nome para “Centro Oeste”;

update estados set estado = 'Norte' where estado in (
'Acre',
'Amazonas',
'Pará',
'Rondônia',
'Roraima',
'Tocantins',
'Amapá'
);

update estados set estado = 'Nordeste' where estado in (
'Alagoas',
'Bahia',
'Ceará',
'Maranhão',
'Paraíba',
'Pernambuco',
'Piauí',
'Rio Grande do Norte',
'Sergipe'
);

update estados set estado = 'Centro-Oeste' where estado in (
'Goiás',
'Mato Grosso',
'Mato Grosso do Sul',
'Distrito Federal'
);

update estados set estado = 'Sudeste' where estado in (
'Espírito Santo',
'Minas Gerais',
'Rio de Janeiro',
'São Paulo'
);

update estados set estado = 'Sul' where estado in (
'Paraná',
'Rio Grande do Sul',
'Santa Catarina'
);


## 3 - Na nacionalidade, alterar estrangeiro para “Fora do Brasil”;

update nacionalidades set nacionalidade = 'Fora do Brasil' where nacionalidade = 'Estrangeira';

## 4 - Nas raças, alterar para “seres humanos”;

update racas set raca = 'Seres Humanos';

## 5 - Na escolaridade mudaremos o padrão, tudo que for ensino fundamental ou médio, será alterado para “ensino básico”, e o que for de graduação para cima, será alterado para “ensino avançado”.


update escolaridades set escolaridade = 'Ensino Básico' where escolaridade in (
'Ensino Fundamental incompleto',
'Ensino Fundamental completo',
'Ensino Médio incompleto',
'Ensino Médio completo'
);

update escolaridades set escolaridade = 'Ensino Avançado' where escolaridade in (
'Superior',
'Mestrado',
'Doutorado'
);
 

## 1. Apresentar um select apenas com o nome e a cidade:

select c.nome, ci.cidade from cadastro_cliente c inner join cidades ci on c.id_cidade = ci.id_cidade;

## 2. Apresentar um select apenas com o nome e o estado:

select c.nome, e.estado from cadastro_cliente c inner join cidades ci on c.id_cidade = ci.id_cidade inner join estados e ON ci.id_estado = e.id_estado;

## 3. Apresentar um select apenas com nome, cpf e a raça:

select c.nome, c.cpf, r.raca from cadastro_cliente c inner join racas r on c.id_raca = r.id_raca;

## 4. Apresentar um select apenas com nome e nacionalidade: 

select c.nome, n.nacionalidade from cadastro_cliente c inner join nacionalidades n on c.id_nacionalidade = n.id_nacionalidade;

## 5. Apresentar um select apenas com o nome e a escolaridade:

select c.nome, es.escolaridade from cadastro_cliente c inner join escolaridades es on c.id_escolaridade = es.id_escolaridade;

## 6. Apresentar um select com nome, cidade e estado:

select c.nome, ci.cidade, es.estado from cadastro_cliente c inner join cidades ci on c.id_cidade = ci.id_cidade inner join estados es on ci.id_estado = es.id_estado;

## 7. Apresentar um select com nome, cidade, estado, fone, rg, sexo, nacionalidade, raça e escolaridade:

select c.nome, ci.cidade, e.estado, c.telefone, c.rg, s.sexo, n.nacionalidade, r.raca, es.escolaridade from cadastro_cliente c

inner join cidades ci on c.id_cidade = ci.id_cidade

inner join estados e on ci.id_estado = e.id_estado

inner join sexos s on c.id_sexo = s.id_sexo

inner join nacionalidades n on c.id_nacionalidade = n.id_nacionalidade

inner join racas r on c.id_raca = r.id_raca

inner join escolaridades es on c.id_escolaridade = es.id_escolaridade;