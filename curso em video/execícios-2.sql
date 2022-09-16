/* 1-uma lista com as profissoes dos gafanhatos e seus respectivos quantitativos. */

select profissao,count(*) from gafanhotos group by profissao;

/* 2- Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005 ? */

select sexo, count(*)
from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/* 3-Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem
 e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3
 gafanhotos com essa nacionalidade. */

select
    nacionalidade,
    count(nacionalidade)
from gafanhotos
where nacionalidade <> 'brasil'
group by nacionalidade
having count(nacionalidade) > 3;

/* 4-uma lista agrupada pela altura dos gafanhotos ,mostrando quantas pessoas 
 pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso.*/

select altura, peso, count(*)
from gafanhotos
where peso > 100
group by altura
having altura > (
        select avg(altura)
        from gafanhotos
    )
order by altura desc;