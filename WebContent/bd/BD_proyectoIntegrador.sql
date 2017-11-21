-- borra la bd si existe
DROP DATABASE IF EXISTS basecd;
-- creamos la bd
CREATE DATABASE basecd;
-- activamos la bd
USE basecd;


CREATE TABLE tb_usuarios(
codigo  int not null auto_increment,
nombre varchar(15),
apellido varchar(25),
usuario  char(4) NOT NULL,
clave    char(5),
facceso date  null,
tipo    int DEFAULT 2,
estado  int(1) DEFAULT 1,
primary key (codigo)
);

create table tb_accesorios(
codAccesorio  char(5)not null,
nomAccesorio  varchar(30),
obsAccesorio  varchar(70),
cantAccesorio int
);

create table tb_categorias(
idtipo      int not null auto_increment,
descripcion varchar(45),
primary key (idtipo)
);

create table tb_campodepor(
idcam      char(5) not null,
descripcion varchar(45),
precio		decimal(8,2),
idtipo		int,
estado		boolean DEFAULT 1,
primary key (idcam),
foreign key (idtipo) references tb_categorias (idtipo)
);

create table tb_reservas(
numreser      char(5) not null,
idcam     char(5) not null,
descripcion varchar(30),
cantidad    int,
preciovta   decimal(8,2),
fechares    date,
horares     datetime,
cliente     int, 
primary key (numreser,idcam),
foreign key (idcam) references tb_campodepor (idcam),
foreign key (cliente) references tb_usuarios(codigo)
);



-- inserts
insert into tb_usuarios values (null,'administrador', 'Sistema','admi', 'admi', curdate(),1,1);
insert into tb_usuarios values (3,'Tito', 'Siber','U001', '10001', curdate(),1,1);
insert into tb_usuarios values (4,'Zoila', 'Baca','U002', '12345', curdate(),1,1);

insert into tb_categorias values (1, 'Mañana');
insert into tb_categorias values (2, 'Tarde');
insert into tb_categorias values (3, 'Noche');


insert into tb_campodepor values ('R0001','CAMPO01',100.5,1,1);
insert into tb_campodepor values ('R0002','CAMPO02',100.5,2,1);
insert into tb_campodepor values ('R0003','CAMPO03',100.5,2,1);
insert into tb_campodepor values ('R0004','CAMPO04',100.5,1,default);
insert into tb_campodepor values ('R0005','CAMPO05',100.5,3,1);



-- consultas
SELECT * FROM tb_usuarios;
SELECT * FROM tb_reservas;


-- consultas


-- ejemplo de procedimiento almancenado de consulta
DELIMiTER $$
create procedure usp_buscausuario (usr char(4), pas char(5))
begin
select * from tb_usuarios where usuario = usr and clave = pas;
end$$
DELIMiTER ;