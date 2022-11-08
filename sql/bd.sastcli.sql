create database SatCli;
use SatCli;

create table opcoes (
    id_opcao int not null auto_increment,
    nome_opcao varchar(100),
    primary key (id_opcao)
);

create table respostas (
    id_resposta int not null auto_increment,
    nome
    celular varchar(50),
    email varchar(200),
    resposta1 int,
    resposta2 int,
    resposta3 int,
    resposta4 int,
    resposta5 int,
    primary key (id_resposta),
    foreign key (resposta_1) references opcoes(id_opcao),
    foreign key (resposta_2) references opcoes(id_opcao),
    foreign key (resposta_3) references opcoes(id_opcao),
    foreign key (resposta_4) references opcoes(id_opcao),
    foreign key (resposta_5) references opcoes(id_opcao)
);

insert into opcoes values (null, 'ruim');
insert into opcoes values (null, 'regular');
insert into opcoes values (null, 'bom');
insert into opcoes values (null, 'muito bom');
insert into opcoes values (null, 'excelente');
select * from opcoes;
