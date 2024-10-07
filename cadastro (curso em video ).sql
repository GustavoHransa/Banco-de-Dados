create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal (5,2),  ## no caso aqui ( o 5 representa o numero de casas , ##
                     ## e o 2 representa quantos numeros apos a virgula) ex: 102,35 KG ##
altura decimal(3,2),   ## mesma coisa ex: 1.89 de altura ( 3 casas e 2 numeros pos a virgula) ##
nacionalidade varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8;

insert into pessoas(nome,nascimento,sexo,peso,altura,nacionalidade) values
('Jose','1989-09-12','M','86.5','1.70','Brasil'),
('Gustavo','1989-09-12','M','8.5','1.70','Brasil'),
('Godolores','2004-10-24','F','75','1.67','Brasil'),
('Thiago','1989-09-12','M','86.5','1.70','Brasil');

alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao ;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
drop column profissao ;

alter table pessoas
add column profissao varchar(10) first;

alter table pessoas
drop column profissao ;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
modify column profissao varchar(20) not null
default "";


create table if not exists  cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2024'
) default charset = utf8;

alter table cursos
add column idcursos int first;

alter table cursos
add primary key(idcursos);

insert into cursos values
('1','HTML5','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução a linguagem Java','10','29','2000'),
('6','MySQL','Banco de dados MySQL','30','15','2000'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2016'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');

select * from cursos ;

update cursos 
set nome = 'HTML5'
where idcursos = 1;

select * from cursos ;

update cursos
set nome = 'PHP', ano = '2015'
where idcursos = '4';

update cursos
set nome = 'Java', carga = '40',ano = '2015'
where idcursos ='5';

delete from cursos
where idcursos ='8';
delete from cursos
where idcursos ='9';
delete from cursos
where idcursos ='10';

update cursos
set ano = '2015'
where idcursos ='6';

truncate cursos ;  ##   ação que apaga tudoooooo  


select * from cursos ;

##______________________________________________________________###

-- estrangeiras ------------------

describe gafanhotos;
alter table gafanhotos add column curso_preferido int ;

alter table gafanhotos
add foreign key (curso_preferido)
references cursos (idcurso);

update gafanhotos set curso_preferido ='6' where id= '1';

UPDATE cadastro.gafanhotos SET curso_preferido = '2' WHERE (id = '2');
UPDATE cadastro.gafanhotos SET curso_preferido = '3' WHERE (id = '3');
UPDATE cadastro.gafanhotos SET curso_preferido = '4' WHERE (id = '4');
UPDATE cadastro.gafanhotos SET curso_preferido = '2' WHERE (id = '5');

select nome,curso_preferido from gafanhotos;

----- inner join ---------- exemplos

select gafanhotos.nome,cursos.nome,cursos.ano from gafanhotos 
inner join cursos on cursos.idcurso = gafanhotos.curso_preferido
order by gafanhotos.nome; -- mesmo que o comando de baixo 

select g.nome,c.nome,c.ano from gafanhotos as g
inner join cursos as c on c.idcurso = g.curso_preferido
order by g.nome; -- comando que abrevia igual a esse exemplo ( resoltado é o mesmo que o de cima )


----- left outer join ---- 

select gafanhotos.nome,cursos.nome,cursos.ano from gafanhotos 
left outer join cursos on cursos.idcurso = gafanhotos.curso_preferido
order by gafanhotos.nome; -- aqui ele mostrou todos os registros mesmo os que não tinha prefeencia de curso

---- right outer join ----

select gafanhotos.nome,cursos.nome,cursos.ano from gafanhotos 
right outer join cursos on cursos.idcurso = gafanhotos.curso_preferido
order by gafanhotos.nome; -- aqui ele deu preferencia para os cursos 


create table gafanhoto_assiste_curso (
id int not null auto_increment,
Data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key(idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)

)default charset =utf8;

insert into gafanhoto_assiste_curso values
(default,'2014-03-01','1','2');

select *from gafanhoto_assiste_curso;

select g.nome ,c.nome from gafanhotos g 
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;




























