#No MySQL Workbench, utilizando o banco de dados ‘sprint4’:
CREATE DATABASE sprint4;
use sprint4;

#Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50), especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da tabela.

CREATE TABLE Professor (
    idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    especialidade VARCHAR(40) NOT NULL,
    dtNasc DATE NOT NULL
);


# Exemplo do campo data: ‘AAAA-MM-DD’, ‘1983-10-13’.
#Inserir dados na tabela, procurando colocar uma especialista para mais de um professor. Procure inserir pelo menos uns 6 professores. 

INSERT INTO Professor (nome, especialidade, dtNasc)
VALUES
    ('João Silva', 'Matemática', '1980-01-15'),
    ('Maria Oliveira', 'História', '1975-05-20'),
    ('Pedro Santos', 'Física', '1982-11-08'),
    ('Ana Souza', 'Biologia', '1990-03-12'),
    ('Carlos Pereira', 'Química', '1978-07-25'),
    ('Laura Fernandes', 'Geografia', '1985-09-10');
    
    
    
# Execute os comandos para:
#a) Exibir todos os dados da tabela.

SELECT * FROM Professor;

#b) Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’,‘assistente’ ou ‘titular’;

alter table Professor
add column funcao VARCHAR(50);

#c) Atualizar os professores inseridos e suas respectivas funções;

update Professor
set funcao = 'titular'
where idProfessor = 1;
update Professor
set funcao = 'monitor'
where idProfessor = 2;
update Professor
set funcao = 'assistente'
where idProfessor = 3;
update Professor
set funcao = 'assistente'
where idProfessor = 4 ;
update Professor
set funcao = 'monitor'
where idProfessor = 5;
update Professor
set funcao = 'titular'
where idProfessor = 6;



update Professor
set funcao = 'assistente'
where idProfessor in (4,5,6);

#d) Inserir um novo professor;

INSERT INTO Professor (nome, especialidade, dtNasc, funcao)
VALUES ('Bruno Costa', 'Português', '1992-02-28', 'monitor');

#e) Excluir o professor onde o idProfessor é igual a 5;

delete from Professor
where idProfessor ='5';


#f) Exibir apenas os nomes dos professores titulares;

SELECT nome FROM Professor WHERE funcao = 'titular';


#g) Exibir apenas as especialidades e as datas de nascimento dos professores monitores;

SELECT especialidade, dtNasc FROM Professor WHERE funcao = 'monitor';


#h) Atualizar a data de nascimento do idProfessor igual a 3;i) Limpar a tabela Professor;

UPDATE Professor SET dtNasc = '1983-11-08' WHERE idProfessor = 3;

TRUNCATE TABLE Professor;



