create database bancodedados;
use bancodedados;


create table estado (
    id_estado int primary key,
    estado varchar(50)
);

create table cidade (
    id_cidade int primary key ,
    cidade varchar(50),
    id_estado int,
    foreign key (id_estado) references estado(id_estado)
);

create table sexo (
    id_sexo int primary key,
    sexo varchar(20)
);

create table nacionalidade (
    id_nacionalidade int primary key,
    nacionalidade varchar(50)
);

create table raca (
    id_raca int primary key,
    raca varchar(50)
);

create table escolaridade (
    id_escolaridade int primary key,
    escolaridade varchar(50)
);
create table cadastro_clientes (
    cpf varchar(14) primary key,
    nome varchar(100),
    RG varchar(20),
    id_cidade int,
    id_sexo int,
    id_nacionalidade int,
    fone varchar(20),
    id_raca int,
    id_escolaridade int,
    foreign key (id_cidade) references cidade(id_cidade),
    foreign key (id_sexo) references sexo(id_sexo),
    foreign key (id_nacionalidade) references nacionalidade(id_nacionalidade),
    foreign key(id_raca) references raca(id_raca),
    foreign key (id_escolaridade) references escolaridade(id_escolaridade)
);

INSERT INTO estado (id_estado,estado)
VALUES
  (1, 'Mato Grosso do Sul'),
  (2, 'São Paulo'),
  (3, 'Rio de Janeiro'),
  (4, 'Mato Grosso'),
  (5,'Paraná');
  
INSERT INTO estado (id_estado, estado)
VALUES
  (6, 'Acre'),
  (7, 'Alagoas'),
  (8, 'Amapá'),
  (9, 'Amazonas'),
  (10, 'Bahia'),
  (11, 'Ceará'),
  (12, 'Distrito Federal'),
  (13, 'Espírito Santo'),
  (14, 'Goiás'),
  (15, 'Maranhão'),

  (17, 'Minas Gerais'),
  (18, 'Pará'),
  (19, 'Paraíba'),
  (20, 'Pernambuco'),
  (21, 'Piauí'),
  (22, 'Rio Grande do Norte'),
  (23, 'Rio Grande do Sul'),
  (24, 'Rondônia'),
  (25, 'Roraima'),
  (26, 'Santa Catarina'),
  (27, 'Sergipe'),
  (28, 'Tocantins');

INSERT INTO cidade (id_cidade, cidade, id_estado)
VALUES
 
  (101, 'Campo Grande', 1),
  (102, 'Corumbá', 1),
  (103, 'Dourados', 1),
  (104, 'Três Lagoas', 1),
  (105, 'Aquidauana', 1),
  
  (201, 'São Paulo', 2),
  (202, 'Campinas', 2),
  (203, 'Santos', 2),
  (204, 'Guarulhos', 2),
  (205, 'Ribeirão Preto', 2),
  
  (301, 'Rio de Janeiro', 3),
  (302, 'Niterói', 3),
  (303, 'Petrópolis', 3),
  (304, 'Nova Iguaçu', 3),
  (305, 'Duque de Caxias', 3),
 
  (401, 'Cuiabá', 4),
  (402, 'Várzea Grande', 4),
  (403, 'Rondonópolis', 4),
  (404, 'Sinop', 4),
  (405, 'Sorriso', 4),
 
  (501, 'Curitiba', 5),
  (502, 'Londrina', 5),
  (503, 'Maringá', 5),
  (504, 'Ponta Grossa', 5),
  (505, 'Cascavel', 5);
  
INSERT INTO cidade (id_cidade, cidade, id_estado)
VALUES

 -- Acre
  (601, 'Rio Branco', 6),
  (602, 'Cruzeiro do Sul', 6),
  (603, 'Senador Guiomard', 6),
  (604, 'Tarauacá', 6),
  (605, 'Feijó', 6),

  (701,'Maceió',7),
  (702,'Arapiraca',7),
  (703,'Palmeira dos Índios',7),
  (704,'Rio Largo',7),
  (705,'Penedo',7),

  -- Amapá
  (801, 'Macapá', 8),
  (802, 'Santana', 8),
  (803, 'Laranjal do Jari', 8),
  (804, 'Oiapoque', 8),
  (805, 'Mazagão', 8),

  -- Amazonas
  (901, 'Manaus', 9),
  (902, 'Parintins', 9),
  (903, 'Itacoatiara', 9),
  (904, 'Manacapuru', 9),
  (905, 'Coari', 9),

  -- Bahia
  (1001, 'Salvador', 10),
  (1002, 'Feira de Santana', 10),
  (1003, 'Vitória da Conquista', 10),
  (1004, 'Camaçari', 10),
  (1005, 'Juazeiro', 10),

  -- Ceará
  (1101, 'Fortaleza', 11),
  (1102, 'Caucaia', 11),
  (1103, 'Juazeiro do Norte', 11),
  (1104, 'Maranguape', 11),
  (1105, 'Sobral', 11),

  -- Distrito Federal
  (1201, 'Brasília', 12),
  (1202, 'Taguatinga', 12),
  (1203, 'Ceilândia', 12),
  (1204, 'Brazlândia', 12),
  (1205, 'Águas Claras', 12),

  -- Espírito Santo
  (1301, 'Vitória', 13),
  (1302, 'Vila Velha', 13),
  (1303, 'Cariacica', 13),
  (1304, 'Serra', 13),
  (1305, 'Cachoeiro de Itapemirim', 13),

  -- Goiás
  (1401, 'Goiânia', 14),
  (1402, 'Aparecida de Goiânia', 14),
  (1403, 'Anápolis', 14),
  (1404, 'Luziânia', 14),
  (1405, 'Rio Verde', 14),

  -- Maranhão
  (1501, 'São Luís', 15),
  (1502, 'Imperatriz', 15),
  (1503, 'São José de Ribamar', 15),
  (1504, 'Caxias', 15),
  (1505, 'Timon', 15),
 
  -- Minas Gerais
  (1701, 'Belo Horizonte', 17),
  (1702, 'Uberlândia', 17),
  (1703, 'Contagem', 17),
  (1704, 'Juiz de Fora', 17),
  (1705, 'Betim', 17),

  -- Pará
  (1801, 'Belém', 18),
  (1802, 'Ananindeua', 18),
  (1803, 'Santarém', 18),
  (1804, 'Marabá', 18),
  (1805, 'Castanhal', 18),

  -- Paraíba
  (1901, 'João Pessoa', 19),
  (1902, 'Campina Grande', 19),
  (1903, 'Santa Rita', 19),
  (1904, 'Patos', 19),
  (1905, 'Bayeux', 19),

  -- Pernambuco
  (2001, 'Recife', 20),
  (2002, 'Jaboatão dos Guararapes', 20),
  (2003, 'Olinda', 20),
  (2004, 'Caruaru', 20),
  (2005, 'Petrolina', 20),

  -- Piauí
  (2101, 'Teresina', 21),
  (2102, 'Parnaíba', 21),
  (2103, 'Picos', 21),
  (2104, 'Caxias', 21),
  (2105, 'Floriano', 21),

  -- Rio Grande do Norte
  (2201, 'Natal', 22),
  (2202, 'Mossoró', 22),
  (2203, 'Parnamirim', 22),
  (2204, 'São Gonçalo do Amarante', 22),
  (2205, 'Ceará-Mirim', 22),

  -- Rio Grande do Sul
  (2301, 'Porto Alegre', 23),
  (2302, 'Caxias do Sul', 23),
  (2303, 'Pelotas', 23),
  (2304, 'Canos', 23),
  (2305, 'Santa Maria', 23),

  -- Rondônia
  (2401, 'Porto Velho', 24),
  (2402, 'Ji-Paraná', 24),
  (2403, 'Ariquemes', 24),
  (2404, 'Cacoal', 24),
  (2405, 'Vilhena', 24),

  -- Roraima
  (2501, 'Boa Vista', 25),
  (2502, 'Rorainópolis', 25),
  (2503, 'Caracaraí', 25),
  (2504, 'Maués', 25),
  (2505, 'Alto Alegre', 25),
  
-- Santa Catarina

  (2601, 'Florianópolis', 26),
  (2602, 'Joinville', 26),
  (2603, 'Blumenau', 26),
  (2604, 'São José', 26),
  (2605, 'Criciúma', 26),

  -- Sergipe
  (2701, 'Aracaju', 27),
  (2702, 'Nossa Senhora do Socorro', 27),
  (2703, 'São Cristóvão', 27),
  (2704, 'Lagarto', 27),
  (2705, 'Itabaiana', 27),

  -- Tocantins
  (2801, 'Palmas', 28),
  (2802, 'Araguaína', 28),
  (2803, 'Gurupi', 28),
  (2804, 'Porto Nacional', 28),
  (2805, 'Paraíso do Tocantins', 28);
  
INSERT INTO sexo (id_sexo, sexo) VALUES
(1,'masculino'),
(2,'Femenino'),
(3,'Todes');

INSERT INTO nacionalidade (id_nacionalidade, nacionalidade) VALUES
(1,'Brasileira'),
(2,'Australiano');

INSERT INTO raca (id_raca, raca) VALUES
(1,'branca'),
(2,'parda'),
(3,'negra'),
(4,'amarela'),
(5,'indigena');

INSERT INTO escolaridade (id_escolaridade, escolaridade) VALUES
(1,'Educação fundamental'),
(2,'Ensino médio'),
(3,'Educação Infantil'),
(4,'superior'),
(5,'pós-graduação'),
(6,'mestrado'),
(7,'Doutorado'),
(8,'escola');


INSERT INTO cadastro_clientes (CPF, nome, RG, Id_cidade, id_Sexo, Id_Nacionalidade, Fone, Id_raca, Id_escolaridade) VALUES

##(12345678912,'Jóse Leoncio',203253632,101,1,1,67999993333,2,2);
(98765432198,'Maria Luiza',654321098,301,2,2,12345678901,1,1),
(54321987654,'João Pedro',987654321,201,1,1,98765432109,3,3),
(65432109876,'Ana Beatriz',111111111,401,2,2,11111111111,2,2),
(32109876543,'Pedro Henrique',222222222,501,1,1,22222222222,1,1),
(87654321098,'Luana Souza',333333333,603,2,2,33333333333,3,3),
(10987654321,'Gabriel Silva',444444444,705,1,1,44444444444,2,2),
(76543210987,'Beatriz Oliveira',555555555,803,2,2,55555555555,1,1),
(43210987654,'Rafael Alves',666666666,901,1,1,66666666666,3,3),
(98765432109,'Julia Martins',777777777,401,2,2,77777777777,2,2),
(11111111111,'Lucas Fernandes',888888888,101,1,1,88888888888,1,1),
(22222222222,'Aline Souza',999999999,102,2,2,99999999999,3,3),
(33333333333,'Felipe Costa',101010101,103,1,1,10101010101,2,2),
(44444444444,'Camila Lima',121212121,104,2,2,12121212121,1,1),
(55555555555,'Vinicius Rocha',131313131,105,1,1,13131313131,3,3),
(66666666666,'Isabella Santos',141414141,203,2,2,14141414141,2,2),
(77777777777,'Thiago Oliveira',151515151,304,1,1,15151515151,1,1),
(88888888888,'Larissa Almeida',161616161,903,2,2,16161616161,3,3),
(99999999999,'Matheus Gomes',171717171,603,1,1,17171717171,2,2),
(10101010101,'Gabriela Silva',181818181,204,2,2,18181818181,1,1);


## 01- Apresentar um select apenas com o nome e a cidade.

SELECT cadastro_clientes.nome, cidade.cidade FROM bancodedados.cadastro_clientes
inner join cidade on cadastro_clientes.id_cidade=cidade.id_cidade;

## 02- Apresentar um select apenas com o nome e o estado.

SELECT cadastro_clientes.nome, estado.estado  FROM bancodedados.cadastro_clientes
inner join cidade on cadastro_clientes.id_cidade=cidade.id_cidade
inner join estado on cidade.id_estado=estado.id_estado;

## 03- Apresentar um select apenas com o nome, cpf e a raça.

select cadastro_clientes.nome,cadastro_clientes.cpf, raca.raca from bancodedados.cadastro_clientes
inner join raca on cadastro_clientes.id_raca=raca.id_raca;

## 04 -  Apresentar um select apenas com o nome e a nacionalidade;

select cadastro_clientes.nome, nacionalidade.nacionalidade from bancodedados.cadastro_clientes
inner join nacionalidade on cadastro_clientes.id_nacionalidade=nacionalidade.id_nacionalidade;

## 05 - Apresentar um select apenas com o nome e a escolaridade;

select cadastro_clientes.nome, escolaridade.escolaridade from bancodedados.cadastro_clientes
inner join escolaridade on cadastro_clientes.id_escolaridade=escolaridade.id_escolaridade;

## 06 - Apresentar um select com nome, cidade e estado;
SELECT cadastro_clientes.nome, cidade.cidade , estado.estado FROM bancodedados.cadastro_clientes
inner join cidade on cadastro_clientes.id_cidade=cidade.id_cidade
inner join estado on cidade.id_estado=estado.id_estado;

## 07 - Apresentar um select com nome, cidade, estado, fone, rg, sexo, nacionalidade, raça, escolaridade ;

SELECT cadastro_clientes.nome, cidade.cidade , estado.estado ,fone ,rg,sexo.sexo,nacionalidade.nacionalidade,raca.raca ,escolaridade.escolaridade from bancodedados.cadastro_clientes
inner join cidade on cadastro_clientes.id_cidade=cidade.id_cidade
inner join estado on cidade.id_estado=estado.id_estado
inner join sexo on sexo.id_sexo=sexo.id_sexo
inner join nacionalidade on cadastro_clientes.id_nacionalidade=nacionalidade.id_nacionalidade
inner join raca on cadastro_clientes.id_raca=raca.id_raca
inner join escolaridade on cadastro_clientes.id_escolaridade=escolaridade.id_escolaridade;




