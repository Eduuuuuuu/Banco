create database callme;

use callme;

create table tbl_cliente (
	id_cliente int not null auto_increment primary key,
	nome varchar(50) not null, 
	apelido varchar(50) not null, 
	data_nascimento date not null, 
	email varchar(100) not null, 
	senha varchar(50) not null
);

create table tbl_estudante (
	id int not null auto_increment primary key,
    nome varchar(50) not null,
    data_nascimento date not null,
    cpf varchar(11) not null,
    email varchar(100) not null,
    senha varchar(50) not null,
    ativo BOOLEAN not null default 0
);

create table tbl_psicologo (
	id int not null auto_increment primary key,
    nome varchar(50) not null,
    data_nascimento date not null,
    cpf varchar(11) not null,
    email varchar(100) not null,
    senha varchar(50) not null,
    ativo BOOLEAN not null default 0,
    crp VARCHAR(5) not null
);

insert into tbl_cliente (nome, apelido, data_nascimento, email, senha) values (
	'Rubens',
    'Potato',
    '2007-03-16',
    'rubencio@email',
    '123'
);

insert into tbl_estudante (nome, data_nascimento, cpf, email, senha, ativo) values (
	'Chris',
    '2000-01-01',
    '11111111111',
    'christopher@email',
    '123',
    true
);

insert into tbl_psicologo (nome, data_nascimento, cpf, email, senha, ativo, crp) values (
	'Greg',
    '2000-01-02',
    '11111111111',
    'gregorio@email',
    '321',
    true,
    '55555'
);

select * from tbl_cliente;
select * from tbl_estudante;
select * from tbl_psicologo;