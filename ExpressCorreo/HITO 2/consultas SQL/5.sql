select t1.Peso_total_paquete, nombre_urgencia(t2.urgenciaMax) as urgenciaMaxima, t1.oficina1 as oficina
from (
	select sum(Paquete.Peso) as Peso_total_paquete, Coche.CodO as oficina1 
	from Paquete 
		inner join Reparto on Reparto.CodRep = Paquete.CodRep 
        inner join Coche on Coche.Matricula = Reparto.Matricula
	where Coche.CodO = 'OF-MAD-O1' 
		and Reparto.Fecha between DATE_SUB(curdate(), INTERVAL 7 day) and curdate()
	group by Coche.CodO
) t1 
    inner join ( 
		select Coche.CodO as oficina2, max(cod_urgencia(Carta_Certificada.Urgencia)) as urgenciaMax
		from Paquete 
			inner join Reparto on Reparto.CodRep = Paquete.CodRep 
            inner join Coche on Coche.Matricula = Reparto.Matricula 
            inner join Carta_Certificada on Carta_Certificada.CodR = Reparto.CodRep
		where Coche.CodO = 'OF-MAD-O1' 
			and Reparto.Fecha between DATE_SUB(curdate(), INTERVAL 7 day) and curdate()
		group by Coche.CodO
	) t2 on t2.oficina2 = t1.oficina1



DELIMITER $$
CREATE FUNCTION cod_urgencia(urgencia varchar(250))
RETURNS int
DETERMINISTIC
BEGIN
	declare codU int;
    
    if(urgencia = 'bajo') then set codU = 1;
    elseif(urgencia = 'medio') then set codU = 2;
    elseif(urgencia = 'alto') then set codU = 3;
    end if;
    
	RETURN (codU);
END$$
DELIMITER ;


DELIMITER $$
CREATE FUNCTION nombre_urgencia(codUrgencia int)
RETURNS varchar(250)
DETERMINISTIC
BEGIN
	declare nombreU varchar(250);
    
    if(codUrgencia = 1) then set nombreU = 'bajo';
    elseif(codUrgencia = 2) then set nombreU = 'medio';
    elseif(codUrgencia = 3) then set nombreU = 'alto';
    end if;
    
	RETURN (nombreU);
END$$
DELIMITER ;