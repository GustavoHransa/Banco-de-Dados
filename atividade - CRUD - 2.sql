## No MySQL Workbench, utilizando o banco de dados ‘sprint’:
create database sprint2;
use sprint2;
## Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista
## (tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
CREATE TABLE Musica (
  idMusica INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(40),
  artista VARCHAR(40),
  genero VARCHAR(40)
);
INSERT INTO Musica (titulo, artista, genero)
VALUES
  ('Bohemian Rhapsody','Queen','Rock'),
  ('Another One Bites the Dust','Queen','Rock'),
  ('Sweet Child O Mine','Guns N Roses','Rock'),
  ('Paradise City','Guns N Roses', 'Rock'),
  ("Think About Me",'Sam Smith','Pop'),
  ('Stay (with Justin Bieber)','The Kid Laroi','Pop'),
  ('Shape of You', 'Ed Sheeran', 'Pop');
  
  -- Execute os comandos para:
## a) Exibir todos os dados da tabela.
SELECT * FROM Musica;

## b) Adicionar o campo curtidas do tipo int na tabela;

ALTER TABLE Musica
ADD COLUMN curtidas INT;

## c) Atualizar o campo curtidas de todas as músicas inseridas;

UPDATE Musica
SET curtidas = 100;

## d) Modificar o campo artista do tamanho 40 para o tamanho 80;

ALTER TABLE Musica
MODIFY COLUMN artista VARCHAR(80);


## e) Atualizar a quantidade de curtidas da música com id=1;

UPDATE Musica
SET curtidas = 150
WHERE idMusica = 1;


## f) Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;

UPDATE Musica
SET curtidas = curtidas + 50
WHERE idMusica IN (2, 3);


## g) Atualizar o nome da música com o id=5;

UPDATE Musica
SET titulo = 'Dancing With Your Ghost'
WHERE idMusica = 5;


## h) Excluir a música com o id=4;

DELETE FROM Musica
WHERE idMusica = 4;


## i) Exibir as músicas onde o gênero é diferente de funk;

SELECT * FROM Musica
WHERE genero <> 'funk';


## j) Exibir os dados das músicas que tem curtidas maior ou igual a 20;

SELECT * FROM Musica
WHERE curtidas >= 20;

## k) Descrever os campos da tabela mostrando a atualização do campo artista;l) Limpar os dados da tabela;

DESCRIBE Musica;
TRUNCATE TABLE Musica;

