create database sge;
use sge;
create table usuario(
	id int auto_increment not null,
	nome varchar(200) not null,
	email varchar(200) not null,
	senha varchar(200) not null,
	tipo int not null,
	primary key(id)
);

create table denuncia(
	id int auto_increment not null,
  id_usuario int not null,
  nome_denunciante text,
	descricao text not null,
	localizacao text not null,
  acoes_realizada text,
  foto text,
  tipo int,
  dia_denuncia int,
  mes_denuncia int,
  ano_denuncia int,
	primary key(id),
  foreign key (id_usuario) references usuario(id)
);

