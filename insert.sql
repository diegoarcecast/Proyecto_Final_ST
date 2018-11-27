-------1----------------
INSERT INTO [dbo].[usr_Usuario]([vc_nombreUsuario],[vc_cedulaUsuario],[vc_telefonoUsuario],[vc_correoUsuario],[vc_claveUsuario],[b_activoUsuario])
	 VALUES ('Fabian Sanchez Hidalgo','3-0467-0169','89759594','fabian-07@hotmail.es','123456',1)    
INSERT INTO [dbo].[usr_Usuario]([vc_nombreUsuario],[vc_cedulaUsuario],[vc_telefonoUsuario],[vc_correoUsuario],[vc_claveUsuario],[b_activoUsuario])
	 VALUES ('Leonardo Ortiz Luquez','1-11517-0517','89564784','lortiz-07@hotmail.es','654321',1)  

-------2----------------
INSERT INTO [dbo].[eve_Estado]([vc_nombreEstado]) VALUES ('Activo')  
INSERT INTO [dbo].[eve_Estado]([vc_nombreEstado]) VALUES ('Inactivo')  
INSERT INTO [dbo].[eve_Estado]([vc_nombreEstado]) VALUES ('Cancelado')

-------3----------------

INSERT INTO [dbo].[eve_TipoEvento]([vc_nombreTipoEvento],[vc_descripcionTipoEvento]) VALUES('Familiar','Toros')
INSERT INTO [dbo].[eve_TipoEvento]([vc_nombreTipoEvento],[vc_descripcionTipoEvento]) VALUES('Deportivos','Heredia, Saprissa') 

-------4----------------

INSERT INTO [dbo].[eve_Evento]([vc_nombreEvento],[i_FK_idTipoEvento],[i_FK_idEstado])VALUES('Toros Zapote',1,1)
 INSERT INTO [dbo].[eve_Evento]([vc_nombreEvento],[i_FK_idTipoEvento],[i_FK_idEstado])VALUES('Concierto Pimpinela',2,2)  
 
-------5---------------- 

INSERT INTO [dbo].[eve_TipoZona]([vc_nombreTipoZona],[vc_descripcionTipoZona])VALUES('No Numerada','')
INSERT INTO [dbo].[eve_TipoZona]([vc_nombreTipoZona],[vc_descripcionTipoZona])VALUES('Numerada','') 


-------6----------------

INSERT INTO [dbo].[eve_Zona]([vc_nombreZona],[i_FK_idTipoZona])VALUES('General Niños',1)
INSERT INTO [dbo].[eve_Zona]([vc_nombreZona],[i_FK_idTipoZona])VALUES('General Adultos',2)   

-------7----------------
 
INSERT INTO [dbo].[eve_Zona_TipoZona]([i_FK_idZona],[i_FK_idTipoZona]) VALUES (1,1)
INSERT INTO [dbo].[eve_Zona_TipoZona]([i_FK_idZona],[i_FK_idTipoZona]) VALUES (1,2)
INSERT INTO [dbo].[eve_Zona_TipoZona]([i_FK_idZona],[i_FK_idTipoZona]) VALUES (2,1)  


-------8----------------

INSERT INTO [dbo].[eve_Lugar]([vc_nombreLugar],[vc_ubicacionLugar],[b_activoLugar])VALUES ('Redondel Zapote','San Jose, Zapote',1)
INSERT INTO [dbo].[eve_Lugar]([vc_nombreLugar],[vc_ubicacionLugar],[b_activoLugar])VALUES ('Estadio Nacional','Sabana',0)  

-------9----------------  

 INSERT INTO [dbo].[eve_Programacion]([dt_fechaProgramacion],[dt_horaProgramacion],[i_FK_idLugar])VALUES(GETDATE(),GETDATE(),1)

 
-------10----------------
INSERT INTO [dbo].[fac_Articulo]([i_FK_idEvento],[i_FK_idZona],[i_FK_idProgramacion],[dec_precioArticulo])VALUES(1,2,3,25630)
INSERT INTO [dbo].[fac_Articulo]([i_FK_idEvento],[i_FK_idZona],[i_FK_idProgramacion],[dec_precioArticulo])VALUES(1,2,4,15000)

-------11----------------

INSERT INTO [dbo].[fac_Compra]([i_FK_idUsuario],[i_FK_idArticulo],[i_cantidadCompra],[dec_montoCompra],[dt_fechaCompra])
    VALUES(1,2,2,369875.25,GETDATE())
INSERT INTO [dbo].[fac_Compra]([i_FK_idUsuario],[i_FK_idArticulo],[i_cantidadCompra],[dec_montoCompra],[dt_fechaCompra])
    VALUES(2,3,1,369875.25,GETDATE())
