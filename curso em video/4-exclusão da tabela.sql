create table if not exists test(
id int,
nome varchar(10),
idade int);

insert into test value
('1', 'pedro','32'),
('2','Maria','30');

drop table if exists  test;