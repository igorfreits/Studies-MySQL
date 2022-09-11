select * from gafanhotos where sexo = 'f';

select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31';

select * from gafanhotos where sexo = 'm' and profissao = 'programador';

select * from gafanhotos where
nacionalidade = 'Brasil' and sexo = 'f' and nome like 'j%';

select nome, nacionalidade from gafanhotos where sexo = 'm'
and nome like '%silva%' and not nacionalidade = 'Brasil' and peso < 100;

select max(altura) from gafanhotos where
sexo = 'm' and nacionalidade = 'Brasil';

select avg(peso) from gafanhotos;

select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade <> 'Brasil' 
and nascimento between '1990-01-01' and '2000-12-31';

select * from gafanhotos where
sexo = 'f' and altura > 1.90;