create database cardapio;
use cardapio;

create table bebidas (
    id_bebida INT not null auto_increment,
    nome_bebida varchar(100) not null,
    descricao_bebida varchar(300) not null,
    preco_bebida decimal(5, 2) not null,
    primary key (id_bebida)
);

create table comida (
    id_comida INT not null auto_increment,
    nome_comida varchar(100) not null,
    descricao_comida varchar(300) not null,
    preco_comida decimal(5, 2) not null,
    primary key (id_comida)
);

create table porcoes (
    id_porcoes INT not null auto_increment,
    nome_porcoes varchar(100) not null,
    descricao_porcoes varchar(300) not null,
    preco_porcoes decimal(5, 2) not null,
    primary key (id_porcoes)
);