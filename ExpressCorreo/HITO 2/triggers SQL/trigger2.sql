DELIMITER $$
CREATE TRIGGER asignar_cartero
after INSERT ON Paquete
FOR EACH ROW
BEGIN
	declare cartero_existe_reparto varchar(250) default null;
	declare total_peso_paquete int;
    declare nuevo_cartero varchar(250);
    
	select sum(Paquete.Peso) into total_peso_paquete
    from Paquete
    where Paquete.CodRep = new.CodRep
    group by Paquete.CodRep;
    
    select Reparto.DNI into cartero_existe_reparto
    from Reparto
    where Reparto.CodRep = new.CodRep;
    
    if(total_peso_paquete > 500 and new.DNI_cartero is null and cartero_existe_reparto is null ) then
		set nuevo_cartero = reparto_cartero(new.CodRep);
        
		update Reparto
        set Reparto.DNI = nuevo_cartero
		where Reparto.CodRep = new.CodRep;  
	end if;                       
END$$
DELIMITER ;

#FUNCIONES USADAS

#devuelve el cartero disponible
DELIMITER $$
CREATE FUNCTION reparto_cartero(idreparto int)
RETURNS varchar(250)
DETERMINISTIC
BEGIN
	DECLARE resul varchar(250);
    
    select t1.cartero_dni into resul
	from (
		select distinct Cartero.DNI as cartero_dni
		from Cartero 
			inner join trabaja on trabaja.DNI = Cartero.DNI 
		where Cartero.DNI not in ( 
			select Cartero.DNI
			from Cartero inner join Reparto on Reparto.DNI=Cartero.DNI
		) 
	) t1 
		inner join ( 
			select distinct trabaja.DNI as cartero_trabaja_dni
			from trabaja
			where trabaja.CodO = (
				select distinct Coche.CodO
				from Coche 
					inner join Reparto on Reparto.Matricula = Coche.Matricula
				where Reparto.CodRep = idreparto
			) and ADDDATE(curtime(), INTERVAL 1 hour) between '09:00:00' and '14:00:00' #horario turno mañana,parcial
				or ADDDATE(curtime(), INTERVAL 1 hour) between '17:00:00' and '21:00:00' #horario turno tarde,parcial
		) t2 on t1.cartero_dni = t2.cartero_trabaja_dni
    order by rand() limit 1;
    
	RETURN resul;
END$$
DELIMITER ;

select reparto_cartero(36); #tiene que devolver cualquiera de ellos  11111111L,22222222L,90909090F,62783134Y despues de insertar los nuevos datos a excepcion de 62783134Y que ya estaba libre


#datos prueba

insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('cartero3','prueba3','11111111L');
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficinaPrueba3','Alcobendas');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('1111 NNN',10,'oficinaPrueba3');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2004-02-08','tarde','17:00-21:00','oficinaPrueba3','11111111L');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(38, '2002-02-19',null,4,'1111 NNN');

insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('cartero4','prueba4','22222222L');
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficinaPrueba4','Alcobendas');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('2121 MNM',10,'oficinaPrueba4');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2004-02-08','tarde','17:00-21:00','oficinaPrueba4','22222222L');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(39, '2002-02-19',null,4,'2121 MNM');

insert into ExpressCorreos.Cartero(Nombre,Apellido,DNI) values('cartero6','prueba6','90909090F');
insert into ExpressCorreos.Oficina(codO,NombreM) values('oficinaPrueba6','Alcobendas');
insert into ExpressCorreos.Coche(Matricula,Capacidad,CodO) values('9999 CCC',10,'oficinaPrueba6');
insert into ExpressCorreos.trabaja(Fecha,Tipo,Horario,CodO,DNI) values('2004-02-08','tarde','17:00-21:00','oficinaPrueba6','90909090F');
insert into ExpressCorreos.Reparto(CodRep,Fecha,DNI,CodRuta,Matricula) values(40, '2002-02-19',null,4,'9999 CCC');


#datos prueba finales en comprobacion del trigger

insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ1234567890','5x25',100,38,'buen servicio','14:00:00','2005-03-16',null,4,5,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ1234567891','5x25',100,38,'buen servicio','14:00:00','2005-03-16',null,4,5,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ1234567892','5x25',100,38,'buen servicio','14:00:00','2005-03-16',null,4,5,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ1234567893','5x25',100,38,'buen servicio','14:00:00','2005-03-16',null,4,5,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ1234567894','5x25',100,38,'buen servicio','14:00:00','2005-03-16',null,4,5,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ1234567895','5x25',100,38,'buen servicio','14:00:00','2005-03-16',null,4,5,null);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ1234567896','5x25',100,39,'buen servicio','14:00:00','2005-03-16',null,4,5,null);


