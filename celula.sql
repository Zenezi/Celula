create table celula (
    id SERIAL PRIMARY KEY,
    nome varchar (100)not null,
    data_hora date not null,
    localizacao varchar (100) not null
)

create table membro (
    id SERIAL primary key,
    nome varchar (100) not null,
    data_nascimento date not null,
    endereco varchar (100) not null,
    email varchar (100) not null,
    data_batismo date not null,
    nome_conjuge varchar (100) not null,
    filhos bytea not null,
    idcelula integer not null,
    foreign key (idcelula) references celula (id)
)