select * from Coche;

update Coche 
	inner join Reparto on Reparto.Matricula = Coche.Matricula 
    inner join Carta on Carta.CodRep = Reparto.CodRep
set Coche.Capacidad = Coche.Capacidad * 1.10
where Reparto.Matricula not in (
	select distinct Reparto.Matricula
	from Reparto 
		inner join Paquete on Paquete.CodRep = Reparto.CodRep
) and Reparto.Matricula not in (
	select distinct Reparto.Matricula
	from Reparto 
		inner join Carta_Certificada on Carta_Certificada.CodR = Reparto.CodRep
);

select * from Coche;