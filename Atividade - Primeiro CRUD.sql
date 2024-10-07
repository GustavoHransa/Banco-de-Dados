## 1. No MySQL Workbench, crie o banco de dados ‘sprint’:
## Escreva e execute os comandos para:
CREATE DATABASE sprint;
use sprint;

## • Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha
## (int, representando a quantidade de medalhas que o atleta possui)

CREATE TABLE Atleta (
  idAtleta INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40),
  modalidade VARCHAR(40),
  qtdMedalha INT
);

## • Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade e pelo menos 5 atletas.

INSERT INTO Atleta (nome, modalidade, qtdMedalha) VALUES
  ('Ana Silva', 'Natação', 2),
  ('Pedro Gomes', 'Atletismo', 3),
  ('Maria Souza', 'Natação', 1),
  ('João Santos', 'Ginástica', 4),
  ('Laura Pereira', 'Vôlei', 5),
  ('Carlos Oliveira', 'Atletismo', 2),
  ('Fernanda Alves', 'Ginástica', 3);
  
  ## Escreva e execute os comandos para:
  
## • Exibir todos os dados da tabela.
 
 SELECT * FROM Atleta;

## • Atualizar a quantidade de medalhas do atleta com id=1;

UPDATE Atleta
SET qtdMedalha = 5
WHERE idAtleta = 1;

## • Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;

UPDATE Atleta
SET qtdMedalha = qtdMedalha + 1
WHERE idAtleta IN (2, 3);

## • Atualizar o nome do atleta com o id=4;
UPDATE Atleta
SET nome = 'João da Silva'
WHERE idAtleta = 4;


## • Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;

ALTER TABLE Atleta
ADD COLUMN dtNasc DATE;


## • Atualizar a data de nascimento de todos os atletas;
UPDATE Atleta
SET dtNasc = '1998-01-01';


## • Excluir o atleta com o id=5;
DELETE FROM Atleta
WHERE idAtleta = 5;

## • Exibir os atletas onde a modalidade é diferente de natação;

SELECT * FROM Atleta
WHERE modalidade <> 'Natação';


## • Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;

SELECT * FROM Atleta
WHERE qtdMedalha >= 3;

## • Modificar o campo modalidade do tamanho 40 para o tamanho 60;

ALTER TABLE Atleta
MODIFY COLUMN modalidade VARCHAR(60);

## • Descrever os campos da tabela mostrando a atualização do campo modalidade;• Limpar os dados da tabela;
  
  DESCRIBE Atleta;
  TRUNCATE TABLE Atleta;
  