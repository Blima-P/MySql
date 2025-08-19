Create database if not exists test012;

use test012;

create table Pessoas (
	ID int primary key auto_increment,
    CPF varchar(11) unique not null,
    nome varchar(255) not null,
    data_nasc date not null,
    saldo float not null default 0.0
    );
    
    insert into Pessoas (CPF, nome, data_nasc)
    values ("1234457891", "Pedro", "2005-12-08"),
    ('11122233344',"Gustavo", '2006-09-09');
    
    select ID, CPF, nome, data_nasc, saldo from Pessoas;
    
    create table test012.Autor (
     ID int primary key auto_increment,
     nome varchar(250) not null
    );
    
    insert into Autor (nome) values ('Vitor'), ("Gustavo");
	
    select * from Autor;
    
    create table Livro018 (
    ISBN varchar(13) primary key,
    titulo varchar(250) not null,
    ano int,
    autorID int not null,
    constraint autorid
    foreign key (autorID) references Autor(ID)
    on update cascade
    on delete restrict
    );
    
    insert into Livro018 (ISBN, titulo, ano, autorID)
    values ("111223334445", "Divisor de Águas no BD", 2025, 1),
("222333344556", "Sociedade dos poetas vivos", 2023, 2);

    select * from Livro018;