create database bancoUpdate;
use bancoUpdate;

CREATE TABLE estado (
  Id_estado INT PRIMARY KEY AUTO_INCREMENT,
  Estado VARCHAR(50) NOT NULL
);

CREATE TABLE cidade (
  Id_cidade INT PRIMARY KEY AUTO_INCREMENT,
  Cidade VARCHAR(100) NOT NULL,
  Id_estado INT,
  FOREIGN KEY (Id_estado) REFERENCES estado(Id_estado)
);

CREATE TABLE sexo (
  Id_sexo INT PRIMARY KEY AUTO_INCREMENT,
  Sexo VARCHAR(20) NOT NULL
);

CREATE TABLE nacionalidade (
  Id_nacionalidade INT PRIMARY KEY AUTO_INCREMENT,
  Nacionalidade VARCHAR(50) NOT NULL
);

CREATE TABLE raca (
  Id_raca INT PRIMARY KEY AUTO_INCREMENT,
  Raca VARCHAR(50) NOT NULL
);

CREATE TABLE escolaridade (
  Id_escolaridade INT PRIMARY KEY AUTO_INCREMENT,
  Escolaridade VARCHAR(50) NOT NULL
);

CREATE TABLE estado_civil (
  Id_estado_civil INT PRIMARY KEY AUTO_INCREMENT,
  Estado_Civil VARCHAR(50) NOT NULL
);

CREATE TABLE cadastro_clientes (
  CPF VARCHAR(11) PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  idade INT,
  RG VARCHAR(20),
  Id_estado_civil INT,
  Id_cidade INT,
  Id_sexo INT,
  Id_nacionalidade INT,
  Fone VARCHAR(20),
  Id_raca INT,
  Id_escolaridade INT,
  data_nascimento DATE, -- Adiciona a data de nascimento
  email VARCHAR(100), -- Adiciona o email
  FOREIGN KEY (Id_estado_civil) REFERENCES estado_civil(Id_estado_civil),
  FOREIGN KEY (Id_cidade) REFERENCES cidade(Id_cidade),
  FOREIGN KEY (Id_sexo) REFERENCES sexo(Id_sexo),
  FOREIGN KEY (Id_nacionalidade) REFERENCES nacionalidade(Id_nacionalidade),
  FOREIGN KEY (Id_raca) REFERENCES raca(Id_raca),
  FOREIGN KEY (Id_escolaridade) REFERENCES escolaridade(Id_escolaridade)
);

insert into estado (id_estado,estado) values ("1","MS");
insert into estado (id_estado,estado) values ("2","MT");
insert into estado (id_estado,estado) values ("3","SP");
insert into estado (id_estado,estado) values ("4","GO");
insert into estado (id_estado,estado) values ("5","RJ");

insert into cidade (id_cidade,cidade) values ("1","Campo Grande"),
insert into cidade (id_cidade,cidade) values ("2","Cuiabá"),
insert into cidade (id_cidade,cidade) values ("3","Sâo Paulo"),
insert into cidade (id_cidade,cidade) values ("4","Goiania"),
insert into cidade (id_cidade,cidade) values ("5","Rio de Janeiro");


## Exercicios abaixo : 
## 1- Se a letra da cidade começar de A até M, Mudar o nome da cidade para “Abaixo de M”, e de M até o final do alfabeto mudar o nome para “Acima de M”;

UPDATE cidade
SET Cidade = CASE 
    WHEN Cidade REGEXP '^[A-M]' THEN 'Abaixo de M'
    ELSE 'Acima de M'
END;


## 2- Os estados, deixaremos de utilizar seu nome, e sim sua região, então verifique a região do estado e altere, ex.: se o estado for Mato Grosso do Sul, você irá alterar o nome para “Centro Oeste”;


## 3 -Na nacionalidade, alterar estrangeiro para “Fora do Brasil”;


## 4- Nas raças, alterar para “seres humanos”;
alter table raca
add column Seres_humanos varchar(20);

ALTER TABLE raca DROP COLUMN raca ;

RENAME TABLE raca TO seres_humanos;

## 5- Na escolaridade mudaremos o padrão, tudo que for ensino fundamental ou médio, será alterado para “ensino básico”, e o que for de graduação para cima, será alterado para “ensino avançado”.
