use master
go

create database SpecialTicket
go

use SpecialTicket
go


CREATE TABLE usr_Usuario
(
	i_PK_idUsuario int identity (1,1) not null,
	vc_nombreUsuario varchar(50) not null,
	i_cedulaUsuario varchar(15) not null,
	i_telefonoUsuario varchar(15)  null,
	vc_correoUsuario varchar(50)not null,
	vc_claveUsuario varchar (50)not null,
	b_activoUsuario bit not null,

	constraint PK_idUsuario primary key (i_PK_idUsuario),
)



CREATE TABLE eve_Estado
(
	i_PK_idEstado int identity (1,1) not null,
	vc_nombreEstado varchar(15) not null,

	constraint PK_idEstado primary key (i_PK_idEstado),
)



CREATE TABLE eve_TipoEvento
(
	i_PK_idTipoEvento int identity (1,1) not null,
	vc_nombreTipoEvento varchar(50) not null,
	vc_descripcionTipoEvento varchar (60) null,

	constraint PK_idTipoEvento primary key (i_PK_idTipoEvento),
)



CREATE TABLE eve_Evento
(
	i_PK_idEvento int identity (1,1) not null,
	vc_nombreEvento varchar(50) not null,
	i_FK_idTipoEvento int not null,
	i_FK_idEstado int not null,
	
	constraint PK_idEvento primary key (i_PK_idEvento),
	constraint eve_Evento_FK_idTipoEvento_eve_TipoEvento foreign key (i_FK_idTipoEvento) references eve_TipoEvento (i_PK_idTipoEvento),
    constraint eve_Evento_FK_idEstado_eve_Estado foreign key (i_FK_idEstado) references eve_Estado (i_PK_idEstado));



CREATE TABLE eve_TipoZona
(
	i_PK_idTipoZona int identity (1,1) not null,
	vc_nombreTipoZona varchar(50) not null,
	vc_descripcionTipoZona varchar (100) null,

	constraint PK_idTipoZona primary key (i_PK_idTipoZona),
)



CREATE TABLE eve_Zona
(
	i_PK_idZona int identity (1,1) not null,
	vc_nombreZona varchar(50) not null,
	i_FK_idTipoZona int not null,

	constraint PK_idZona primary key (i_PK_idZona),
	constraint eve_Zona_FK_idTipoZona_eve_TipoZona foreign key (i_FK_idTipoZona) references eve_TipoZona (i_PK_idTipoZona),
)


CREATE TABLE eve_Zona_TipoZona
(
	i_PK_idZonaTipo int identity (1,1) not null,
	i_FK_idZona int not null,
	i_FK_idTipoZona int not null,

	constraint PK_idZonaTipo primary key (i_PK_idZonaTipo),

	constraint eve_Zona_TipoZona_FK_idZona_eve_Zona foreign key (i_FK_idZona) references eve_Zona (i_PK_idZona),

	constraint eve_Zona_TipoZona_FK_idTipoZona_eve_TipoZona foreign key (i_FK_idTipoZona) references eve_TipoZona (i_PK_idTipoZona),
)


CREATE TABLE eve_Lugar
(
	i_PK_idLugar int identity (1,1) not null,
	vc_nombreLugar varchar(50) not null,
	vc_ubicacionLugar varchar (100) not null,
	b_activoLugar bit not null,

	constraint PK_idLugar primary key (i_PK_idLugar),
)



CREATE TABLE eve_Programacion
(
	i_PK_idProgramacion int identity (1,1) not null,
	dt_fechaProgramacion datetime not null,
	dt_horaProgramacion datetime not null,
	i_FK_idLugar int not null,

	constraint PK_idProgramacion primary key (i_PK_idProgramacion),

	constraint eve_Programacion_FK_idLugar_eve_Lugar foreign key (i_FK_idLugar) references eve_Lugar (i_PK_idLugar),
)


CREATE TABLE fac_Articulo
(
	i_PK_idArticulo int identity (1,1) not null,
    i_FK_idEvento int not null,
	i_FK_idZona int not null,
	i_FK_idProgramacion int not null,
	dec_precioArticulo decimal not null,

	constraint PK_idArticulo primary key (i_PK_idArticulo),
	constraint eve_Articulo_FK_idEvento_eve_Evento foreign key (i_FK_idEvento) references eve_Evento (i_PK_idEvento),
	constraint eve_Articulo_FK_idZona_eve_Zona foreign key (i_FK_idZona) references eve_Zona (i_PK_idZona),
	constraint eve_Articulo_FK_idProgramacion_eve_Programacion foreign key (i_FK_idProgramacion) references eve_Programacion (i_PK_idProgramacion),
)



CREATE TABLE fac_Compra
(
	i_PK_idCompra int identity (1,1) not null,
    i_FK_idUsuario int not null,
	i_FK_idArticulo int not null,
	i_cantidadCompra int not null,
	dec_montoCompra decimal not null,
	dt_fechaCompra datetime not null,

	constraint PK_idCompra primary key (i_PK_idCompra),
	constraint eve_Compra_FK_idUsuario_eve_usr_Usuario foreign key (i_FK_idUsuario) references usr_Usuario (i_PK_idUsuario),
	constraint eve_Compra_FK__idArticulo_eve_fac_Articulo foreign key (i_FK_idArticulo) references fac_Articulo (i_PK_idArticulo),	
)
go