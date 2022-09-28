-- Active: 1659878189229@@127.0.0.1@3306@cadastro
select * from cursos
where nome like 'p%';

select * from cursos
where nome like '%a';

select * from cursos
where nome not like '%a%';

update cursos set nome = 'PáOO' where idcurso = '9';

select * from cursos
where nome like 'ph%p%';

select * from cursos
where nome like 'ph%p_';

select * from cursos
where nome like 'p__t%';

select * from gafanhotos
where nome like '%_silva%';

select * from gafanhotos
where nome like 'silva%';

select distinct carga from cursos;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select count(*) from cursos;

select count(*) from cursos
where carga > 40;

select count(nome) from cursos;

select max(carga) from cursos;

select max(totaulas) from cursos where ano = '2016';

select min(carga) from cursos;

select nome, min(totaulas) from cursos where ano='2016';

select sum(totaulas) from cursos;

select sum(totaulas) from cursos where ano = '2016';

select avg(totaulas) from cursos;

select avg(totaulas) from cursos where ano = '2016';
