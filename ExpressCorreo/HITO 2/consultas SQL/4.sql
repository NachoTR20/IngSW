select distinct Coche.CodO as oficina, Cartero.DNI as DNI_cartero, count(Reparto.CodRep) as TotalRepartos
from Cartero 
	inner join Reparto on Reparto.DNI = Cartero.DNI 
	inner join Coche on Coche.Matricula = Reparto.Matricula
group by Cartero.DNI, Coche.CodO
order by TotalRepartos DESC