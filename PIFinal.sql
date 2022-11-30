create database ProjetoIndividual;
use ProjetoIndividual;


create table questionario (
idquest int primary key auto_increment,
pergunta int,
resposta varchar(45),
pontos int
);

create table usuarios (
idusuario int auto_increment,
nome varchar(45),
email varchar(105),
telefone char(11),
senha varchar(45),
confirmarsenha varchar(45),
fkquest int,
foreign key (fkquest) references questionario(idquest),
primary key (idusuario, fkquest)
);



create table simulador (
idsimu int auto_increment,
jogo int,
vitorias int,
derrotas int,
fkusuario int,
foreign key (fkusuario) references usuarios(idusuario),
primary key (idsimu, fkusuario)
);


select * from usuarios;
select * from simulador;
select * from questionario;