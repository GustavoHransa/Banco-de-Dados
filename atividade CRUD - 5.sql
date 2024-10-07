# No MySQL Workbench, utilizando o banco de dados ‘sprint’:

CREATE DATABASE sprint5;
use sprint5;

#Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla (tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela. 

CREATE TABLE Curso (
    idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sigla CHAR(3) NOT NULL,
    coordenador VARCHAR(50)
);

# Inserir dados na tabela, procure inserir pelo menos 3 cursos.

INSERT INTO Curso (nome, sigla, coordenador)
VALUES
    ('Ciência da Computação', 'CC', 'João Silva'),
    ('Engenharia Civil', 'EC', 'Maria Oliveira'),
    ('Administração', 'ADM', 'Pedro Santos');


#Execute os comandos para:
#a) Exibir todos os dados da tabela.

SELECT * FROM Curso;

#b) Exibir apenas os coordenadores dos cursos.

SELECT coordenador FROM Curso;

#c) Exibir apenas os dados dos cursos de uma determinada sigla.

SELECT * FROM Curso WHERE sigla = 'CC';

#d) Exibir os dados da tabela ordenados pelo nome do curso.

SELECT * FROM Curso ORDER BY nome;

#e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.

SELECT * FROM Curso ORDER BY coordenador DESC;

#f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.

SELECT * FROM Curso WHERE nome LIKE 'C%';

#g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.

SELECT * FROM Curso WHERE nome LIKE '%o';

#h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.

SELECT * FROM Curso WHERE nome LIKE '_i%';

# i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.j) Elimine a tabela.

SELECT * FROM Curso WHERE nome LIKE '%a_';



 