create database lojavirtual;
use lojavirtual;

create table clientes (
	id int auto_increment not null primary key,
    nome varchar(60) not null,
    email varchar(60) not null
);

create table produtos (
	id int auto_increment not null primary key,
    nome varchar(60) not null,
    descricao varchar(90),
    valor double not null default 0.0,
    quantidade int not null default 1
);

drop table produtos;

insert into produtos values (NULL, "Teclado", "Teclado RGB", 130.99, 1);

select * from produtos;
select * from clientes;

update produtos set nome = "Monitor", descricao = "Monitor 1920x1080", valor = 599.90, quantidade = 2 where id = 1;