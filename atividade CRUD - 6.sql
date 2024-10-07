# No MySQL Workbench, utilizando o banco de dados ‘sprint’:
create database sprint6;
use sprint6;

# Você vai criar uma tabela para armazenar os dados de revistas (como por ex: Veja, Isto é, Epoca, Quatro Rodas, Claudia, etc).

# Escreva e execute os comandos para:

#• Criar a tabela chamada Revista para conter os campos: idRevista (int e chave primária da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30). Os valores de idRevista devem 
#iniciar com o valor 1 e ser incrementado automaticamente pelo sistema.
CREATE TABLE Revista (
    idRevista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    categoria VARCHAR(30)
);

# • Inserir 4 registros na tabela, mas sem informar a categoria. Escreva e execute os comandos para:
INSERT INTO Revista (nome)
VALUES
    ('Veja'),
    ('Isto É'),
    ('Época'),
    ('Quatro Rodas');


#• Exibir todos os dados da tabela.

SELECT * FROM Revista;

#• Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.

UPDATE Revista SET categoria = 'Notícias' WHERE idRevista = 1;
UPDATE Revista SET categoria = 'Notícias' WHERE idRevista = 2;
UPDATE Revista SET categoria = 'Geral' WHERE idRevista = 3;
UPDATE Revista SET categoria = 'Automobilística' WHERE idRevista = 4;

SELECT * FROM Revista;

#• Insira mais 3 registros completos.

INSERT INTO Revista (nome, categoria)
VALUES
    ('Claudia', 'Feminina'),
    ('National Geographic', 'Ciência'),
    ('Galileu', 'Ciência');

#• Exibir novamente os dados da tabela.

SELECT * FROM Revista;

#• Exibir a descrição da estrutura da tabela.

DESCRIBE Revista;

#• Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.

ALTER TABLE Revista MODIFY categoria VARCHAR(40);

#• Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria

DESCRIBE Revista;

#• Acrescentar a coluna periodicidade à tabela, que é varchar(15).

ALTER TABLE Revista ADD COLUMN periodicidade VARCHAR(15);

#• Exibir os dados da tabela.• Excluir a coluna periodicidade da tabela.

SELECT * FROM Revista;
ALTER TABLE Revista DROP COLUMN periodicidade;
