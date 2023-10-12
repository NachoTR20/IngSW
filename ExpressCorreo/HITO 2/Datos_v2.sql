
insert into ExpressCorreos.Provincia(Nombre,CodP)values('provincia1',12);
insert into ExpressCorreos.Provincia(Nombre,CodP)values('provincia2',13);
insert into ExpressCorreos.Provincia(Nombre,CodP)values('provincia3',14);
insert into ExpressCorreos.Provincia(Nombre,CodP)values('provincia4',15);
insert into ExpressCorreos.Provincia(Nombre,CodP)values('provincia5',16);
insert into ExpressCorreos.Provincia(Nombre,CodP)values('Madrid',17);
insert into ExpressCorreos.Provincia(Nombre,CodP)values('Valencia',18);#



insert into ExpressCorreos.Municipio(NombreM,CodP)values('municipio1',12);
insert into ExpressCorreos.Municipio(NombreM,CodP)values('municipio2',13);
insert into ExpressCorreos.Municipio(NombreM,CodP)values('municipio3',14);
insert into ExpressCorreos.Municipio(NombreM,CodP)values('municipio4',15);
insert into ExpressCorreos.Municipio(NombreM,CodP)values('municipio5',16);
insert into ExpressCorreos.Municipio(NombreM,CodP)values('Alcobendas',17);
insert into ExpressCorreos.Municipio(NombreM,CodP)values('Alcobendas2',18);
insert into ExpressCorreos.Municipio(NombreM,CodP)values('Aranjuez',17);#
insert into ExpressCorreos.Municipio(NombreM,CodP)values('Alcorcon',17);


insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('calle1','municipio1');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('calle2','municipio2');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('calle3','municipio3');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('calle4','municipio4');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('calle5','municipio5');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('Paseo de prado','Alcobendas');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('Paseo de superPrado','Alcobendas');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('Paseo de megaprado','Alcobendas');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('Paseo de ultraprado','Alcobendas');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('paseo incognito','Alcobendas');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('Paseo de superAranjuez','Aranjuez');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('Paseo de megaAranjuez','Aranjuez');
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('Paseo de ultraAranjuez','Aranjuez');#
insert into ExpressCorreos.Calle_Municipio(NombreC,NombreM)values('Avenida de America','Alcorcon');




insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina1','municipio1');
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina2','municipio2');											 
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina3','municipio3');											 
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina4','municipio4');												 
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina5','municipio5');
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina6','Alcobendas');  #bloque1
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina7','Alcobendas');
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina8','Alcobendas');
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina9','Aranjuez');
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina10','Aranjuez');
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina11','Aranjuez');
insert into ExpressCorreos.Oficina(codO,NombreM) values('OF-MAD-O1','Aranjuez');#
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficina12','Alcorcon');


insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('luis','carbajal','12345678A');
insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('pablo','fuente','12312345B');
insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('lucas','batman','01237659C');
insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('eva','cat','01777659C');
insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('speedy','gonzales','33333333C');#
insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('hombre','araña','45126789T');
insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('hulk','el increible','62783134Y');
insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('capitan','america','12637833U');



insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('0000 ZZZ',10,'oficina6');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('3547 NXB',10,'oficina1');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('1234 ABC',10,'oficina2');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('7789 DFG',10,'oficina3');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('2323 AHN',10,'oficina4');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('1242 DFA',10,'oficina1');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('6784 VBF',10,'oficina2');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('5236 BGV',10,'oficina2');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('2422 CAS',10,'oficina3');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('5212 CEA',10,'oficina6');#
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('1452 VBG',10,'OF-MAD-O1');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('5689 NHJ',10,'OF-MAD-O1');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('0796 HYJ',10,'OF-MAD-O1');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('5743 ASQ',10,'OF-MAD-O1');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('4995 ERF',10,'OF-MAD-O1');#----------
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('5222 YYY',10,'OF-MAD-O1');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('6334 NYN',10,'OF-MAD-O1');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('5784 KJK',10,'OF-MAD-O1');




insert into ExpressCorreos.Rutas(codRuta) values (1);
insert into ExpressCorreos.Rutas(codRuta) values (2);
insert into ExpressCorreos.Rutas(codRuta) values (3);
insert into ExpressCorreos.Rutas(codRuta) values (4);
insert into ExpressCorreos.Rutas(codRuta) values (5);#
insert into ExpressCorreos.Rutas(codRuta) values (6);
insert into ExpressCorreos.Rutas(codRuta) values (7);
insert into ExpressCorreos.Rutas(codRuta) values (8);
insert into ExpressCorreos.Rutas(codRuta) values (9);


insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(1, '1995-02-01','12345678A',1,'0000 ZZZ');#---------------
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(2, '1996-03-02','12312345B',2,'3547 NXB');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(3, '1997-04-07','01237659C',3,'1234 ABC');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(4, '1998-05-12','01777659C',4,'7789 DFG');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(5, '1999-01-01','33333333C',5,'2323 AHN');#----------------
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(6, '1999-05-05','12345678A',5,'1242 DFA');#------------------
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(7, '1999-06-06','33333333C',3,'6784 VBF');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(8, '1999-07-07','12312345B',1,'5236 BGV');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(9, '1999-08-08','01237659C',1,'1234 ABC');#
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(10, '1999-09-09','01237659C',2,'6784 VBF');#
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(11, '1999-10-10','12345678A',3,'5212 CEA');#
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(12, '1999-11-11','33333333C',1,'6784 VBF');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(13, '1999-12-12','33333333C',4,'5236 BGV');#
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(14, '2000-08-08','01777659C',2,'2422 CAS');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(15, '2001-08-08','12312345B',1,'1242 DFA');#
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(16, '2002-02-04','12312345B',1,'1452 VBG');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(17, '2002-02-05','12345678A',2,'5689 NHJ');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(18, '2002-02-06','01777659C',5,'0796 HYJ');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(19, '2002-02-07','33333333C',3,'5743 ASQ');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(20, '2002-02-08','12312345B',4,'4995 ERF');#
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(21, '2002-02-09','01237659C',6,'3547 NXB');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(22, '2002-02-10','01237659C',6,'5236 BGV');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(23, '2002-02-11','33333333C',6,'5236 BGV');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(24, '2002-02-12','33333333C',6,'5212 CEA');#
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(25, '2002-02-13','12345678A',7,'4995 ERF');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(26, '2002-02-14','12345678A',7,'5743 ASQ');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(27, '2002-02-15','12637833U',7,'5212 CEA');#
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(28, '2002-02-16','12637833U',6,'4995 ERF');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(29, '2002-02-17','12637833U',6,'5743 ASQ');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(30, '2002-02-18','45126789T',6,'5743 ASQ');#
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(31, '2002-02-19','12345678A',5,'5743 ASQ');#----------
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(32, '2022-11-25','12345678A',9,'5222 YYY');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(33, '2022-11-25','12345678A',2,'5222 YYY');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(34, '2022-11-27','12345678A',2,'6334 NYN');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(35, '2022-11-26','12345678A',4,'6334 NYN');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(36, '2022-11-27','12345678A',2,'5784 KJK');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(37, '2022-11-28','12345678A',2,'5784 KJK');





insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (1,2,3,6,1,'Paseo de prado','Alcobendas');
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (2,2,1,6,2,'calle1','municipio1');
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (3,3,4,1,1,'calle2','municipio2');
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (4,4,3,2,2,'calle3','municipio3');
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (5,3,3,4,1,'calle4','municipio4');#
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (6,4,2,4,2,'Paseo de prado','Alcobendas');
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (7,1,5,3,2,'Paseo de prado','Alcobendas');
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (8,6,6,6,1,'Paseo de megaprado','Alcobendas');#
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (9,6,2,2,1,'Paseo de superAranjuez','Aranjuez');
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (10,6,2,2,1,'Paseo de ultraAranjuez','Aranjuez');#--------------------
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (11,6,2,2,1,'paseo incognito','Alcobendas');#
insert into ExpressCorreos.Direccion(Id,Piso,Puerta,Numero,Portal,NombreC,NombreM) values (12,6,2,12,1,'Paseo de prado','Alcobendas');#




insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(1,'ana','lopez', 12);
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(2,'juan','vasquez',8);
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(3,'fernando','bruno',7);
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(4,'fidel','el bueno',9);
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(5,'ariela','espinoza',1);#
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(6,'alfredo','gonzales',3);

insert into ExpressCorreos.Usuario_Real(DNI,Correo_electronico,CodU,DNI_autoriza) values ('3857892T','usuario1@gmail.com',1,null);
insert into ExpressCorreos.Usuario_Real(DNI,Correo_electronico,CodU,DNI_autoriza) values ('3093892Y','usuario2@gmail.com',2,'3857892T');
insert into ExpressCorreos.Usuario_Real(DNI,Correo_electronico,CodU,DNI_autoriza) values ('1855892K','usuario3@gmail.com',3,null);
insert into ExpressCorreos.Usuario_Real(DNI,Correo_electronico,CodU,DNI_autoriza) values ('0081413P','usuario4@gmail.com',4,'1855892K');
insert into ExpressCorreos.Usuario_Real(DNI,Correo_electronico,CodU,DNI_autoriza) values ('7777211I','usuario5@gmail.com',5,null);#


insert into ExpressCorreos.Recogida_paquete(CodRecogida,Fecha,DNI_usuarioReal,DNI_cartero,ID_direccion) values (1,'2020-10-01','3857892T','12345678A',1);
insert into ExpressCorreos.Recogida_paquete(CodRecogida,Fecha,DNI_usuarioReal,DNI_cartero,ID_direccion) values (2,'2022-11-03','3093892Y','12312345B',2);
insert into ExpressCorreos.Recogida_paquete(CodRecogida,Fecha,DNI_usuarioReal,DNI_cartero,ID_direccion) values (3,'2022-12-12','1855892K','01237659C',3);
insert into ExpressCorreos.Recogida_paquete(CodRecogida,Fecha,DNI_usuarioReal,DNI_cartero,ID_direccion) values (4,'2022-10-01','0081413P','01777659C',4);
insert into ExpressCorreos.Recogida_paquete(CodRecogida,Fecha,DNI_usuarioReal,DNI_cartero,ID_direccion) values (5,'2022-08-02','7777211I','33333333C',5);#
insert into ExpressCorreos.Recogida_paquete(CodRecogida,Fecha,DNI_usuarioReal,DNI_cartero,ID_direccion) values (6,'2022-05-01','7777211I','33333333C',5);
insert into ExpressCorreos.Recogida_paquete(CodRecogida,Fecha,DNI_usuarioReal,DNI_cartero,ID_direccion) values (7,'2022-05-02','1855892K','01777659C',4);
insert into ExpressCorreos.Recogida_paquete(CodRecogida,Fecha,DNI_usuarioReal,DNI_cartero,ID_direccion) values (8,'2022-05-03','7777211I','33333333C',3);
insert into ExpressCorreos.Recogida_paquete(CodRecogida,Fecha,DNI_usuarioReal,DNI_cartero,ID_direccion) values (9,'2022-05-04','1855892K','12345678A',5);
insert into ExpressCorreos.Recogida_paquete(CodRecogida,Fecha,DNI_usuarioReal,DNI_cartero,ID_direccion) values (10,'2022-05-05','7777211I','33333333C',5);


insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete1','100x36',20,1,'soy batman','20:00:00','2000-01-01','12345678A',1,2,1);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete2','50x20',50,1,'todo correcto','21:00:00','2001-02-01','12312345B',1,3,2);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete3','70x30',60,1,'recomendado','22:00:00','2020-03-02','01237659C',2,5,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete4','90x60',15,2,'servicio rapido','23:00:00','2018-05-07','01237659C',4,3,4);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete5','100x50',10,3,'buen servicio','24:00:00','2016-12-12','01237659C',1,5,null);#
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete6','100x50',10,16,'buen servicio','24:00:00','2001-02-23','01237659C',2,3,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete7','100x50',20,17,'buen servicio','11:00:00','2002-08-09','12312345B',1,2,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete8','100x50',15,18,'buen servicio','12:00:00','2003-04-12','01237659C',3,4,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete9','100x50',15,19,'buen servicio','13:00:00','2004-01-14','12345678A',1,5,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete10','100x50',10,20,'buen servicio','14:00:00','2005-03-16','01237659C',4,5,null);#
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete11','5x25',10,32,'buen servicio','14:00:00','2022-11-30','01237659C',2,5,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete12','5x25',10,32,'buen servicio','14:00:00','2022-11-30','01237659C',1,5,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('paquete13','5x25',50,34,'buen servicio','14:00:00','2022-11-30','12345678A',1,1,null);



insert into ExpressCorreos.Area_Envio(CodA,CodA_contenida,CodO) values ('1',null,'oficina6');
insert into ExpressCorreos.Area_Envio(CodA,CodA_contenida,CodO) values ('2',null,'oficina3');
insert into ExpressCorreos.Area_Envio(CodA,CodA_contenida,CodO) values ('3','1','oficina1');
insert into ExpressCorreos.Area_Envio(CodA,CodA_contenida,CodO) values ('4',null,'oficina4');
insert into ExpressCorreos.Area_Envio(CodA,CodA_contenida,CodO) values ('5','4','oficina2');
insert into ExpressCorreos.Area_Envio(CodA,CodA_contenida,CodO) values ('AR-MAD-O3','3','oficina2');#
insert into ExpressCorreos.Area_Envio(CodA,CodA_contenida,CodO) values ('area_envio1','4','oficina5');
insert into ExpressCorreos.Area_Envio(CodA,CodA_contenida,CodO) values ('area_envio2','5','oficina7');#
insert into ExpressCorreos.Area_Envio(CodA,CodA_contenida,CodO) values ('area_envio3','2','oficina8');
insert into ExpressCorreos.Area_Envio(CodA,CodA_contenida,CodO) values ('area_envio4','1','oficina9');



insert into ExpressCorreos.Asigna(DNI,CodA) values ('12345678A','1');
insert into ExpressCorreos.Asigna(DNI,CodA) values ('12345678A','2');
insert into ExpressCorreos.Asigna(DNI,CodA) values ('12312345B','4');
insert into ExpressCorreos.Asigna(DNI,CodA) values ('01777659C','3');
insert into ExpressCorreos.Asigna(DNI,CodA) values ('33333333C','5');#
insert into ExpressCorreos.Asigna(DNI,CodA) values ('33333333C','AR-MAD-O3');
insert into ExpressCorreos.Asigna(DNI,CodA) values ('12345678A','AR-MAD-O3');
insert into ExpressCorreos.Asigna(DNI,CodA) values ('12312345B','AR-MAD-O3');
insert into ExpressCorreos.Asigna(DNI,CodA) values ('01777659C','AR-MAD-O3');

insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',1,'2000-01-01','20:00:00','12345678A',1,1,3);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',2,'2020-02-04','21:10:00','12345678A',1,2,4);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A5',3,'1995-05-03','23:15:00','12312345B',3,3,1);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A6',4,'2001-01-02','22:20:00','01237659C',3,5,2);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',5,'2006-06-06','16:01:00','33333333C',5,4,3);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',6,'2007-06-08','20:05:00','33333333C',5,6,3);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A5',7,'2008-01-08','12:00:00','12312345B',3,6,2);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',8,'2008-01-08','10:00:00','12312345B',6,5,6);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',9,'2008-01-08','10:00:00','12312345B',7,3,2);#
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',10,'2008-01-09','10:00:00','01237659C',3,3,3);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',11,'2008-01-10','10:00:00','01237659C',3,3,3);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',12,'2008-01-11','10:00:00','01237659C',3,3,3);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',13,'2008-01-12','10:00:00','01237659C',3,3,3);#
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',14,'2008-01-13','10:00:00','12312345B',20,1,4);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',15,'2008-01-14','10:00:00','12312345B',20,5,4);
insert into ExpressCorreos.Carta(Formato,Id,Fecha,Hora,DNI_cartero,CodRep,CodU_envia,CodU_recibe) values('A4',16,'2008-01-15','10:00:00','12312345B',20,4,4);



insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('alto',1,'2000-01-01','11:01:31',1,'12345678A','3857892T','3093892Y');
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('bajo',2,'2001-02-12','12:02:11',2,'12312345B','3093892Y','3857892T');
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('bajo',3,'2002-04-11','13:03:21',2,'12312345B','1855892K','3857892T');
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('medio',4,'2003-06-10','14:04:20',3,'01237659C','7777211I','0081413P');
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('bajo',5,'2004-03-21','21:00:00',5,'01777659C','7777211I','1855892K');#
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('alto',6,'2001-01-21','11:00:00',16,'01777659C','3093892Y','3857892T');
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('bajo',7,'2002-02-01','12:00:00',17,'01777659C','7777211I','1855892K');
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('medio',8,'2003-03-01','13:00:00',18,'01777659C','1855892K','3857892T');
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('alto',9,'2004-04-02','14:00:00',19,'01777659C','7777211I','1855892K');
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('medio',10,'2005-05-03','15:00:00',20,'01777659C','1855892K','3857892T');#
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('alto',11,'2022-11-30','11:00:00',32,'01777659C','3093892Y','3857892T');
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('medio',12,'2022-11-30','11:00:00',32,'01777659C','1855892K','0081413P');
insert into ExpressCorreos.Carta_Certificada(Urgencia,Id,Fecha,Hora,CodR,DNI_cartero,DNI_usuarioRealEnvia,DNI_usuarioRealRecibe) values('bajo',13,'2022-11-30','11:00:00',32,'01777659C','1855892K','3857892T');



insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(1,1,5,'Paseo de prado','Alcobendas','1');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(2,6,10,'Paseo de prado','Alcobendas','3');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(3,11,15,'Paseo de prado','Alcobendas','3');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(4,16,20,'Paseo de prado','Alcobendas','AR-MAD-O3');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(5,1,5,'Avenida de America','Alcorcon','1');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(6,6,10,'Avenida de America','Alcorcon','2');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(7,11,15,'Avenida de America','Alcorcon','3');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(8,1,5,'calle2','municipio2','AR-MAD-O3');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(9,6,15,'calle2','municipio2','3');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(10,1,5,'Paseo de megaprado','Alcobendas','AR-MAD-O3');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(11,6,15,'Paseo de megaprado','Alcobendas','4');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(12,1,10,'calle4','municipio4','5');#
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(13,1,5,'Paseo de superPrado','Alcobendas','4');
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(14,1,5,'paseo incognito','Alcobendas','4');
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(15,1,5,'Paseo de superAranjuez','Aranjuez','2');
insert into ExpressCorreos.Segmento(CodS,Inicio,Fin,NombreC,NombreM,CodA) values(16,1,5,'Paseo de ultraAranjuez','Aranjuez','3');#





insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(1,5);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(2,4);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(3,3);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(4,2);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(5,1);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(1,6);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(3,7);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(2,8);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(6,3);#
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(4,9);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(4,10);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(4,11);#
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(1,1);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(1,7);
insert into ExpressCorreos.usuario_tiene_direccion(CodU,ID_direccion) values(1,12);



insert into ExpressCorreos.Turno(Tipo,Horario) values('mañana','09:00-14:00');
insert into ExpressCorreos.Turno(Tipo,Horario) values('tarde','17:00-21:00');
insert into ExpressCorreos.Turno(Tipo,Horario) values('parcial','09:00-14:00');
insert into ExpressCorreos.Turno(Tipo,Horario) values('parcial','17:00-21:00');


insert into ExpressCorreos.Centro_Clasificacion(CodCC,Nombre,MaxC,MaxP) values(1,'centro1',500,500);
insert into ExpressCorreos.Centro_Clasificacion(CodCC,Nombre,MaxC,MaxP) values(2,'centro2',400,400);
insert into ExpressCorreos.Centro_Clasificacion(CodCC,Nombre,MaxC,MaxP) values(3,'centro3',300,300);
insert into ExpressCorreos.Centro_Clasificacion(CodCC,Nombre,MaxC,MaxP) values(4,'centro4',500,500);
insert into ExpressCorreos.Centro_Clasificacion(CodCC,Nombre,MaxC,MaxP) values(5,'centro5',600,600);


insert into ExpressCorreos.contacto(CodCC,CodO) values(1,'oficina2');
insert into ExpressCorreos.contacto(CodCC,CodO) values(2,'oficina4');
insert into ExpressCorreos.contacto(CodCC,CodO) values(3,'oficina5');
insert into ExpressCorreos.contacto(CodCC,CodO) values(4,'oficina1');
insert into ExpressCorreos.contacto(CodCC,CodO) values(5,'oficina3');


insert into ExpressCorreos.pertenece(CodCC,NombreM) values(1,'Alcobendas');
insert into ExpressCorreos.pertenece(CodCC,NombreM) values(2,'Aranjuez');
insert into ExpressCorreos.pertenece(CodCC,NombreM) values(3,'municipio2');
insert into ExpressCorreos.pertenece(CodCC,NombreM) values(4,'municipio3');
insert into ExpressCorreos.pertenece(CodCC,NombreM) values(5,'municipio4');

insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(1,1,1);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(2,2,1);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(3,3,1);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(1,4,2);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(2,5,2);#
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(1,11,6);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(2,12,6);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(3,13,6);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(4,1,6);#
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(1,11,7);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(2,12,7);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(3,13,7);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(4,1,7);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(5,2,7);#
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(1,11,3);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(2,12,3);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(3,13,3);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(4,2,3);#
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(1,11,9);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(2,12,9);#
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(4,14,3);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(5,15,3);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(6,16,3);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(7,1,3);#
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(1,3,4);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(2,4,4);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(3,5,4);#---------------
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(1,5,5);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(2,6,5);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(3,7,5);#
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(5,5,6);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(6,6,6);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(7,7,6);#
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(3,5,1);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(4,6,1);
insert into ExpressCorreos.ruta_tiene_segmento(Orden,CodS,CodRuta) values(5,7,1);






insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2000-01-01','mañana','09:00-14:00' ,'oficina1','12345678A');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2001-01-03','mañana','09:00-14:00' ,'oficina2','12312345B');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2002-02-05','tarde','17:00-21:00' ,'oficina3','01237659C');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2003-04-01','tarde','17:00-21:00' ,'oficina4','33333333C');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2004-02-02','tarde','17:00-21:00' ,'oficina5','12312345B');#
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2004-02-02','parcial','09:00-14:00','oficina6','12312345B');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2004-02-03','parcial','17:00-21:00' ,'oficina7','12312345B');#
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2000-01-02','mañana','09:00-14:00' ,'oficina2','12345678A');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2000-01-03','mañana','09:00-14:00' ,'oficina3','12345678A');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2000-01-04','mañana','09:00-14:00' ,'oficina4','12345678A');#
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2000-01-12','mañana','09:00-14:00' ,'oficina1','62783134Y');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2000-01-13','tarde','17:00-21:00' ,'oficina2','62783134Y');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2000-01-14','parcial','09:00-14:00' ,'oficina3','62783134Y');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2000-01-15','parcial','17:00-21:00' ,'oficina4','62783134Y');#
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2000-01-16','parcial','17:00-21:00' ,'oficina5','62783134Y');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2000-01-17','parcial','17:00-21:00' ,'oficina6','62783134Y');




#POSIBLE MEJORA .v2 , reemplazar el Usuario por este, si se produce el cambio
/*
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(1,'ana','lopez', 12);
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(2,'juan','vasquez',8);
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(3,'fernando','bruno',7);
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(4,'fidel','el bueno',9);
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(5,'ariela','espinoza',1);#
insert into ExpressCorreos.Usuario(CodU,Nombre,Apellidos,id_direccion) values(6,'alfredo','gonzales',3);
*/


















