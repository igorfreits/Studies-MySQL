create database cadastro
default character set utf8
default collate utf8_general_ci;

createtable pessoas(
    id not null auto_increment,
    nome varchar(30)not null,
    nascimento date,
    sexo enum('M','F'),
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(20) default 'Brasileiro',
    primary key(id)
) default charset=utf8;