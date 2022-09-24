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

create TABLE login (
id serial PRIMARY KEY,
email varchar (100) NOT NULL,
senha varchar (50) NOT NULL,
idmembro integer NOT NULL
foreign KEY (idmembro) REFERENCES membro (id)
)


create TABLE compromissos (
id serial PRIMARY KEY,
data_hora date NOT NULL,
localizacao varchar (100) NOT NULL,
descricao varchar (100) NOT NULL,
idcelula integer NOT NULL,
FOREIGN KEY (idcelula) REFERENCES celula (id)

)

create TABLE momentos(
id serial PRIMARY KEY,
dia date NOT NULL,
descricao varchar (100) NOT NULL,
idcelula integer NOT NULL,
FOREIGN KEY (idcelula) REFERENCES celula (id)
)


create TABLE testemunhos (
id serial PRIMARY KEY,
dia date NOT NULL,
relato varchar (100) NOT NULL
idmembro integer NOT NULL,
FOREIGN KEY (idmembro) REFERENCES membro (id)
)

CREATE TABLE pedido oracao (
id serial PRIMARY KEY,
data_hora date NOT NULL,
pedido varchar (100) NOT NULL,
idmembro integer NOT NULL,
FOREIGN KEY (idmembro) REFERENCES membro (id)
)
