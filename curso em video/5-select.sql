-- Active: 1659878189229@@127.0.0.1@3306@cadastro
select * from cursos
order by nome desc;

select ano, nome, carga from cursos
order by ano,  nome;

select nome, descricao, ano from cursos
where ano <> 2015
order by ano, nome;

select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

select nome, descricao,ano from cursos
where ano in('2014', '2016', '2020')
order by ano;

select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30;