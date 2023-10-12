DELIMITER $$
CREATE TRIGGER registro_paquetes
BEFORE insert ON Paquete
FOR EACH ROW
BEGIN
	if(SUBSTRING(new.Id, 1, 2) <> 'PQ' or cadena_de_diez_numeros(new.Id) <> true) then 
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'error: id paquete no cumple con la normativa';
    end if;
    
	if(paquete_dimension_izquierda(new.Dimension) < 5 or paquete_dimension_izquierda(new.Dimension) > 25 
		or paquete_dimension_derecha(new.Dimension) < 5 or paquete_dimension_derecha(new.Dimension) > 25) then
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'error: dimension del paquete no cumple con la normativa';
	end if;
    
    if(new.Peso < 1 or new.Peso > 100) then
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'error: peso del paquete no cumple con la normativa';
	end if;
END$$
DELIMITER ;



#datos prueba

insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('YT1234567890','100x36',20,1,'soy batman','20:00:00','2000-01-01','12345678A',1,2,1);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ0asdaqrq','100x36',20,1,'soy batman','20:00:00','2000-01-01','12345678A',1,2,1);

insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ9876543210','100x36',20,1,'soy batman','20:00:00','2000-01-01','12345678A',1,2,1);

insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ1222222328','6x20',200,1,'soy batman','20:00:00','2000-01-01','12345678A',1,2,1);
insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ1222222328','6x20',-1,1,'soy batman','20:00:00','2000-01-01','12345678A',1,2,1);

insert into ExpressCorreos.Paquete(Id,Dimension,Peso,CodRep,Comentario,Hora,Fecha,DNI_cartero,CodU_envia,CodU_recibe,CodRecogida) values ('PQ1222542322','6x20',2,1,'soy batman','20:00:00','2000-01-01','12345678A',1,2,1);


#FUNCIONES USADAS

#funciones usadas substring y rlike para las expresiones regulares

#comprueba haya 10 numeros consecutivos en la cadena
DELIMITER $$
CREATE FUNCTION cadena_de_diez_numeros(idPaquete varchar(250))
RETURNS boolean
DETERMINISTIC
BEGIN
	declare correcto int default true;
    declare nuevoid varchar(250) default 'error';
    declare i int default 3;
    declare longitud int default 0;
    
    select length(idPaquete) into longitud;
    
    if(longitud <> 12 ) then
		set correcto = false;
    end if;
    
    loop_label: LOOP
		if(correcto = false or i = 10) then
			LEAVE loop_label;
		end if;
		
        if(SUBSTRING(idPaquete, i, 1) rlike '[0-9]') then
			set correcto = true;
		else set correcto = false;
		end if;
        
        set i = i + 1;
    END LOOP;
	RETURN correcto;
END$$
DELIMITER ;


#funcion que duelve la subcadena izquierda antes de la 'x' de numero de la dimension del paquete

DELIMITER $$
CREATE FUNCTION paquete_dimension_izquierda(dimension varchar(250))
RETURNS decimal
DETERMINISTIC
BEGIN
	declare dimen1 varchar(250) default '';
    declare dimen1_decimal decimal default 0;
    
    set dimen1 = SUBSTRING(dimension, 1, position('x'in dimension) - 1);
    set dimen1_decimal = cast(dimen1 as decimal);
    
	RETURN dimen1_decimal;
END$$
DELIMITER ;


#funcion que duelve la subcadena derecha antes de la 'x' de numero de la dimension del paquete

DELIMITER $$
CREATE FUNCTION paquete_dimension_derecha(dimension varchar(250))
RETURNS decimal
DETERMINISTIC
BEGIN
	declare dimen2 varchar(250) default '';
    declare dimen2_decimal decimal default 0;
    
    set dimen2 = SUBSTRING(dimension, position('x'in dimension) + 1);
    set dimen2_decimal = cast(dimen2 as decimal);
    
	RETURN dimen2_decimal;
END$$
DELIMITER ;



