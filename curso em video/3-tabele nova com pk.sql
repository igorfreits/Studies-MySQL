create table if not exists cursos(
nome varchar(30) not null,
decricao text,
carga int unsigned,
totaulas int unsigned,
ano year default 2022
) default charset = utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

desc cursos;