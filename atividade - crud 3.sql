## 3. No MySQL Workbench, utilizando o banco de dados ‘sprint’:
create database sprint3;
use sprint3;

## Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
## (tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.

CREATE TABLE Filme (
    idFilme INT PRIMARY KEY AUTO_INCREMENT,
    título VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

## Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um filme, e um diretor, que tenha mais de um filme cadastrado. Procure inserir pelo menos uns 7 filmes.

INSERT INTO Filme (título, genero, diretor)
VALUES
    ('O Poderoso Chefão', 'Drama', 'Francis Ford Coppola'),
    ('O Poderoso Chefão II', 'Drama', 'Francis Ford Coppola'),
    ('Pulp Fiction', 'Crime', 'Quentin Tarantino'),
    ('O Senhor dos Anéis: A Sociedade do Anel', 'Fantasia', 'Peter Jackson'),
    ('O Senhor dos Anéis: As Duas Torres', 'Fantasia', 'Peter Jackson'),
    ('A Lista de Schindler', 'Drama', 'Steven Spielberg'),
    ('O Silêncio dos Inocentes', 'Thriller', 'Jonathan Demme');
    
## Execute os comandos para:

## • Exibir todos os dados da tabela.

SELECT * FROM Filme;

## • Adicionar o campo protagonista do tipo varchar(50) na tabela;

ALTER TABLE Filme ADD protagonista VARCHAR(50);

## • Atualizar o campo protagonista de todas os filmes inseridos;

UPDATE Filme SET protagonista = 'Marlon Brando' WHERE idFilme = 1;

## • Modificar o campo diretor do tamanho 40 para o tamanho 150;

ALTER TABLE Filme MODIFY diretor VARCHAR(150);


## • Atualizar o diretor do filme com id=5;

UPDATE Filme SET diretor = 'Novo Diretor' WHERE idFilme = 5;


## • Atualizar o diretor dos filmes com id=2 e com o id=7;

UPDATE Filme SET diretor = 'Outro Diretor' WHERE idFilme IN (2, 7);

## • Atualizar o título do filme com o id=6;

UPDATE Filme SET título = 'Novo Título' WHERE idFilme = 6;


## • Excluir o filme com o id=3;

DELETE FROM Filme WHERE idFilme = 3;


## • Exibir os filmes em que o gênero é diferente de drama;

SELECT * FROM Filme WHERE genero != 'Drama';


## • Exibir os dados dos filmes que o gênero é igual ‘suspense’;

SELECT * FROM Filme WHERE genero = 'Suspense';


## • Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;• Limpar os dados da tabela;

DESCRIBE Filme; -- Descrever os campos da tabela
TRUNCATE TABLE Filme;  ## Limpar os dados da tabela

    
    