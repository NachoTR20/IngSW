select distinct Area_Envio.CodA, Area_Envio.CodA_contenida, Area_Envio.CodO
from (
	select trabaja.DNI as DNI_cartero, count(distinct id_turno(trabaja.Tipo,trabaja.Horario)) as numero_de_turnos
	from trabaja
	group by trabaja.DNI
	having numero_de_turnos = (
		select count(id_turno(Turno.Tipo, Turno.Horario))
		from Turno
	)
) t1 
	inner join trabaja on trabaja.DNI = t1.DNI_cartero 
    inner join Oficina on Oficina.CodO = trabaja.CodO 
    inner join Area_Envio on Area_Envio.CodO = Oficina.CodO
     
     

DELIMITER $$
CREATE FUNCTION id_turno(tipo varchar(250), horario varchar(250))
RETURNS int
DETERMINISTIC
BEGIN
	declare idturno int;
    
	if(tipo = 'mañana' and horario = '09:00-14:00') then set idturno = 1;
    elseif(tipo = 'tarde' and horario = '17:00-21:00') then set idturno = 2;
    elseif(tipo = 'parcial' and horario = '09:00-14:00') then set idturno = 3;
    elseif(tipo = 'parcial' and horario = '17:00-21:00') then set idturno = 4;
    end if;
    
	RETURN (idturno);
END$$
DELIMITER ;