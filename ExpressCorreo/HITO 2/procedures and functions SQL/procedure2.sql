DELIMITER $$
CREATE FUNCTION mejor_ruta_predefinida(idreparto int)
RETURNS int
DETERMINISTIC
BEGIN
	declare suma_puntos_segmentos_max int default -99;
	declare suma_puntos_segmentos int default 0;
    
	declare rutaAct int default -99;
    declare rutaAdecuada int default -99;
    
	DECLARE done INT DEFAULT FALSE;
	DECLARE a, b INT;
	DECLARE cur1 CURSOR FOR select ruta_tiene_segmento.CodRuta as ruta, ruta_tiene_segmento.CodS as segmento
							from ruta_tiene_segmento;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
	OPEN cur1; 
		read_loop: LOOP
        
		FETCH cur1 INTO a, b; 
        
		IF done THEN
			LEAVE read_loop;
		END IF;
            
            if(a <> rutaAct) then 
				set rutaAct = a;
                set suma_puntos_segmentos = 0;
            end if;
            
			set suma_puntos_segmentos = suma_puntos_segmentos + puntos_segmentos(idreparto, b);
            
			if(suma_puntos_segmentos > suma_puntos_segmentos_max) then
				set suma_puntos_segmentos_max = suma_puntos_segmentos;
				set rutaAdecuada = rutaAct;
			end if;
            
		END LOOP;
	CLOSE cur1;
    
    if(suma_puntos_segmentos_max = 0) then 
		set rutaAdecuada = -1;
    end if;
    
	RETURN (rutaAdecuada);
END$$
DELIMITER ;

#comprobacion
select mejor_ruta_predefinida(7);  #probar con 1,7,2,5 , y si utilizamos el 4 dara -1, indicando que no hay ruta predefinida para el


#FUNCIONES USADAS

#devuelve el numero de segmentos por el que pasa un reparto
DELIMITER $$
CREATE FUNCTION puntos_segmentos(idReparto int, idSegmento int)
RETURNS int
DETERMINISTIC
BEGIN
	declare puntos int default 0;
    
    select tabla_carta_paquete_cc_sum_segmentos.sum_segment into puntos
	from (
		select tabla_carta_paquete_cc.reparto as repart, tabla_carta_paquete_cc.segment as segmento, sum(tabla_carta_paquete_cc.num_de_segmentos) as sum_segment
		from (
			select t1.reparto as reparto, Segmento.CodS as segment, count(Segmento.CodS) as num_de_segmentos, 'carta' as tipo
			from (
				select Reparto.CodRep as reparto, Direccion.Id as direccion, count(Direccion.Id) as numero_de_direcciones
				from Direccion 
					inner join Usuario on Usuario.id_direccion = Direccion.Id 
					inner join Carta on Carta.CodU_recibe = Usuario.CodU 
					inner join Reparto on Reparto.CodRep = Carta.CodRep
				group by Reparto.CodRep,Direccion.Id
			) t1 
				inner join Direccion on Direccion.id = t1.direccion 
				inner join Calle_Municipio on Calle_Municipio.NombreC = Direccion.NombreC 
				inner join Segmento on Segmento.NombreC = Calle_Municipio.NombreC 
			group by t1.reparto, Segmento.CodS
			
			union

			select t1.reparto as reparto, Segmento.CodS as segment, count(Segmento.CodS) as num_de_segmentos, 'paquete' as tipo
			from (
				select Reparto.CodRep as reparto,Direccion.Id as direccion,count(Direccion.Id) as numero_de_direcciones
				from Direccion 
					inner join Usuario on Usuario.id_direccion = Direccion.Id 
					inner join Paquete on Paquete.CodU_recibe = Usuario.CodU 
					inner join Reparto on Reparto.CodRep = Paquete.CodRep
				group by Reparto.CodRep,Direccion.Id
			) t1 
				inner join Direccion on Direccion.id = t1.direccion 
				inner join Calle_Municipio on Calle_Municipio.NombreC = Direccion.NombreC 
				inner join Segmento on Segmento.NombreC = Calle_Municipio.NombreC 
			group by t1.reparto, Segmento.CodS
					
			union
			 
			select t1.reparto as reparto, Segmento.CodS as segment, count(Segmento.CodS) as num_de_segmentos, 'carta_certificada' as tipo
			from (
				select Reparto.CodRep as reparto,Direccion.Id as direccion, count(Direccion.Id) as numero_de_direcciones
				from Direccion 
					inner join Usuario on Usuario.id_direccion = Direccion.Id 
					inner join Usuario_Real on Usuario_Real.CodU = Usuario.CodU 
					inner join Carta_Certificada on Carta_Certificada.DNI_usuarioRealRecibe = Usuario_Real.DNI 
					inner join Reparto on Reparto.CodRep = Carta_Certificada.CodR
				group by Reparto.CodRep,Direccion.Id
				) t1 
					inner join Direccion on Direccion.id = t1.direccion 
					inner join Calle_Municipio on Calle_Municipio.NombreC = Direccion.NombreC 
					inner join Segmento on Segmento.NombreC = Calle_Municipio.NombreC 
				group by t1.reparto, Segmento.CodS
		) tabla_carta_paquete_cc
		group by tabla_carta_paquete_cc.reparto,tabla_carta_paquete_cc.segment
		order by tabla_carta_paquete_cc.reparto asc
	) tabla_carta_paquete_cc_sum_segmentos
	where tabla_carta_paquete_cc_sum_segmentos.repart = idReparto 
		and tabla_carta_paquete_cc_sum_segmentos.segmento = idSegmento;
        
	RETURN (puntos);
END$$
DELIMITER ;