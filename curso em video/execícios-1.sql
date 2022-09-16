-- 1) Uma lista com o nome de todos os gafanhotos Mulheres.

select * from gafanhotos where sexo = 'f';

-- 2) Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015.

select *
from gafanhotos
where
    nascimento between '2000-01-01' and '2015-12-31';

-- 3) Uma lista com o nome de todos os homens que trabalham como programadores.

select *
from gafanhotos
where
    sexo = 'm'
    and profissao = 'programador';

-- 4) Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J.

select *
from gafanhotos
where
    nacionalidade = 'Brasil'
    and sexo = 'f'
    and nome like 'j%';

-- 5) Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome,

-- não nasceram no Brasil e pesam menos de 100 Kg.

select nome, nacionalidade
from gafanhotos
where
    sexo = 'm'
    and nome like '%silva%'
    and not nacionalidade = 'Brasil'
    and peso < 100;

-- 6) Qual é a maior altura entre gafanhotos Homens que moram no Brasil?

select max(altura)
from gafanhotos
where
    sexo = 'm'
    and nacionalidade = 'Brasil';

-- 7) Qual é a média de peso dos gafanhotos cadastrados?

select avg(peso) from gafanhotos;

-- 8) Qual é o menor peso entre os gafanhotos Mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?

select min(peso)
from gafanhotos
where
    sexo = 'F'
    and nacionalidade <> 'Brasil'
    and nascimento between '1990-01-01' and '2000-12-31';

-- 9) Quantas gafanhotos Mulheres tem mais de 1.90cm de altura?

select * from gafanhotos where sexo = 'f' and altura > 1.90;