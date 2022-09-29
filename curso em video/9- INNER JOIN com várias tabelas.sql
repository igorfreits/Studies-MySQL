create table gafanhoto_assite_curso(
id int not null auto_increment,
data date, 
idgafanhoto int,
idcurso int,
primary key(id),
foreign key(idgafanhoto) references gafanhotos(id),
foreign key(idcurso) references cursos(idcurso)
)default charset = utf8;

select * from gafanhoto_assite_curso;

insert into gafanhoto_assite_curso  values
(default,'2014-03-01','1','2');

select g.nome,idcurso  from gafanhotos g
join gafanhoto_assite_curso a
on g.id = a.idgafanhoto
order by g.nome;

select g.nome, c.nome from gafanhotos g
join gafanhoto_assite_curso a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;




