use cadastro;
select * from gafanhotos; -- aqui ele mostra tudo que na tabela gafanhotos
select * from cursos; -- aqui ele mostra tudo que tá na tabela cursos
select * from cursos 
order by nome ;  -- aqui ordena pelo nome ( NOME É DO CURSO )

select * from cursos 
order by nome desc ;  -- aqui ordena pelo nome de baixo para cima  ( NOME É DO CURSO )

select * from cursos 
order by nome asc ; -- aqui ele vai ordenar por ordem alfabetica 

describe cursos ; -- aqui ele descreve a estrutura da tabela 

select nome,carga, ano from cursos 
order by nome ; -- aqui eu selecionei pra visualizar algumas colunas 

select ano,carga,nome from cursos 
order by ano ; -- aqui eu selecionei pra visualizar algumas colunas e coloquei para colocar em ordem o ano de 2010 a 2020 

select ano,carga,nome from cursos 
order by ano desc ; -- aqui eu selecionei pra visualizar algumas colunas e coloquei para colocar em ordem o ano de 2020 a 2010 

select ano,carga,nome from cursos 
order by ano,nome ; -- aqui eu selecionei pra visualizar algumas colunas e coloquei para colocar em ordem o ano de 2010 a 2020 e o nome fica em ordem

select ano,carga,nome from cursos 
order by ano,nome desc ; -- aqui eu selecionei pra visualizar algumas colunas e coloquei para colocar em ordem o ano de 2020 a 2010 e o nome fica em ordem

select * from cursos 
where ano = '2016'
order by nome desc ; -- aqui eu selecionei apenas os cursos de 2016

select * from cursos 
where ano = '2020'
order by nome desc ; -- aqui eu selecionei apenas os cursos de 2020

select nome,carga from cursos 
where ano = '2020'
order by nome desc ; -- aqui eu selecionei apenas os cursos de 2020 e vai aparecer somente o nome e a carga

select * from cursos 
where ano <= '2016'
order by nome ; -- aqui ele vai selecionar registros do ano de menor ou igual a 2016

select * from cursos 
where ano >= '2016'
order by nome ; -- aqui ele vai selecionar registros do ano de maior ou igual a 2016

select nome, ano from cursos
where ano between 2014 and 2016
order by ano , nome; -- aqui ele mostrar registros ENTRE 2014 a 2016 

select * from cursos
where ano in (2014, 2016 , 2020)
order by ano ; -- aqui ele só vai mostrar registros de 2014 , 2016 e 2020 

select * from cursos
where carga > 35 and totaulas < 30; -- aqui vou mostrar carga horaria maior que 35 e menos de 30 aulas 

select * from cursos
where carga > 35 or totaulas < 30; -- ou é carga horaria maior que 35 ou é menos de 30 aulas , ou é um ou é o outro

select * from cursos
where nome like 'p%'; -- aqui ele vai procurar nome que começa com a letra P 

select * from cursos
where nome  not like '%p%'; -- aqui ele vai buscar apenas nomes sem a letra(p) é ( em qualquer posisão da palavra)

select * from cursos
where nome like 'a%'; -- aqui ele vai buscar apenas nomes que começa com a letra A

select * from cursos
where nome not like '%a%'; -- aqui ele vai buscar apenas nomes sem a letra(a) é ( em qualquer posisão da palavra)

select * from cursos
where nome like 'ph%p'; -- aqui ele vai procurar nomes que começa com PH e termina com P , igual esse do exemplo ( PHP e Photoshop)

select * from cursos
where nome like 'a%s'; -- aqui ele vai procurar nomes que começa com a letra A e termina com a letra S ( After Effects, Algoritmos)

select * from cursos
where nome like 'ph%p_';  -- aqui no final ele pede algum caracter numeros letras simbolos no caso aqui é ( PHP4 e PHP7)


select nacionalidade from gafanhotos ; -- aqui vai buscar uma tabela apenas nacionalidade todos os registros mesmo os repetidos

select distinct nacionalidade from gafanhotos; -- assim ele vai aparecer um valor de cada tipo ( 1 brasil , 1 portugal e assim por diante )

select distinct nacionalidade from gafanhotos
order by nacionalidade; -- assim ele vai aparecer um valor de cada tipo ( 1 brasil , 1 portugal e assim por diante ) POR ORDEM ALFABETICA

select distinct carga from cursos
order by carga; -- ele mostra quais tipos de cargas de horas ( 10,15,20,30 .... )

select count(*) from cursos ; -- essa função faz contar quantos registros tem 

select * from cursos where carga > 30 ; -- aqui ele vai mostrar os cursos que são maior que 30 horas
select count(*) from cursos where carga > 30 ; -- aqui ele vai contar quantos cursos acima de 30 horas tem nos registros 

select * from cursos order by carga ; -- aqui ele vai mostra da menor carga horaria a maior carga horaria

select max(carga) from cursos; -- aqui ele vai mostrar o curso com a maior carga horaria

select max(totaulas) from cursos where ano = '2016'; -- aqui ele vai mostrar o curso com maior total de aulas em 2016

select min(totaulas) from cursos where ano = '2016'; -- aqui ele vai mostrar o curso com menos total de aulas em 2016
select nome,min(totaulas) from cursos where ano = '2016'; -- aqui ele vai mostrar o curso com menos total de aulas em 2016 e o nome do curso 

select min(totaulas) from cursos ; -- aqui ele vai mostrar o curso que tem o minimo de aulas 

select sum(totaulas) from cursos ; -- aqui ele vai somar todas aulas 

select sum(totaulas) from cursos where ano = '2016' ; -- aqui ele vai somar todas aulas de 2016

select avg(totaulas) from cursos where ano = '2016'; -- aqui ele vai tirar a media de aulas em 2016

----------------- exercicios ----------------------------------------

select * from gafanhotos where sexo = 'f'; -- aqui ele vai buscar somente as mulheres no cadastro

select * from gafanhotos
where nascimento between 2000-01-01 and 2015-12-31
order by nome , nascimento;

select * from gafanhotos where sexo ='m' and profissao ='programador' ;

select * from gafanhotos where sexo ='f' and nacionalidade = 'brasil' and nome like 'j%';

select nome,nacionalidade from gafanhotos where sexo ='m' and nacionalidade not like 'brasil' and peso < 100 and nome like '%silva';

select *,max(altura) from gafanhotos where sexo ='m' and nacionalidade like 'brasil' ;

select avg(peso) from gafanhotos ;

select *,min(peso) from gafanhotos where sexo ='f' and nacionalidade not like 'brasil' ;

select count(*) from gafanhotos where sexo ='f' and altura >1.90 ;


-----------------------------------------------------------------------

select carga,count(nome) from cursos
group by carga ; -- aqui ele vai agrupar tipos de carga de horas e contar quantos tem de cada carga 

select totaulas,count(nome) from cursos
group by totaulas; -- aqui ele vai agrupar total de aulas de cada curso  e contar quantos tem de cada aula

select *,count(nome) from cursos
group by ano ; -- aqui ele vai agrupar por ano e vai contar quantos cursos tem em cada ano 

select ano,count(*) from cursos
group by ano ; -- aqui ele vai contar quantos cursos tem em cada ano 

select nome,ano,count(*) from cursos
group by ano 
having count(ano) >= 5; -- aqui ele vai mostrar mais de 5 ou igual a cursos em algum ano , exemplo 2017 tem 8 cursos e 2018 tem 5 cursos .

select avg(carga) from cursos; -- aqui ele vai mostrar a media da carga horaria de cada curso 







