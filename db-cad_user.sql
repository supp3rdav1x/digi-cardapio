create database cad_users;
use cad_users;

create table cargos (
    id_cargo int not null auto_increment,
    nome_cargo varchar(100) not null,
    primary key (id_cargo)
);

create table users(
    id_user int not null auto_increment,
    nome_user varchar(100) not null,
    cargo_user int not null,
    email_user varchar(200) not null,
    senha_user password not null,
    primary key (id_user),
    foreign key (cargo_user) references cargos(id_cargo)
);