create database sastcli;
use sastcli;

create table opcoes (
    id_opcao int not null auto_increment,
    nome_opcao varchar(100),
    primary key (id_opcao)
);

create table respostas (
    id_resposta int not null auto_increment,
    celular_resp varchar(50),
    email_resp varchar(200),
    resposta_1 int,
    resposta_2 int,
    resposta_3 int,
    resposta_4 int,
    resposta_5 int,
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