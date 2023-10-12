select temporal1.rutas, sum(temporal1.numero_de_repartos)  #rutas por las pasaron mas de 3 repartos
from (
	select t1.ruta as rutas, Reparto.CodRep as reparto, count(Reparto.CodRep) as numero_de_repartos, 'carta' as tipo  #rutas que contienen todos los segmentos de la calle avenida de america y del municipio alcorcon del repartos que pasaron por ahi
	from (
		select ruta_tiene_segmento.CodRuta as ruta, count(Segmento.CodS) 
		from ruta_tiene_segmento 
			inner join Segmento on Segmento.CodS = ruta_tiene_segmento.CodS
		where Segmento.NombreC = 'Avenida de America' 
			and Segmento.NombreM = 'Alcorcon'
		group by ruta_tiene_segmento.CodRuta
		having count(Segmento.CodS) = (	
			select count(Segmento.CodS)
			from Segmento  
			where Segmento.NombreC = 'Avenida de America' 
				and Segmento.NombreM = 'Alcorcon'
		)
	) t1 
		inner join Reparto on Reparto.CodRuta = t1.ruta 
        inner join Carta on Carta.CodRep = Reparto.CodRep
	group by t1.ruta, Reparto.CodRep

	UNION

	select t1.ruta as rutas, Reparto.CodRep as reparto, count(Reparto.CodRep) as numero_de_repartos, 'paquete' as tipo
	from (
		select ruta_tiene_segmento.CodRuta as ruta, count(Segmento.CodS) 
		from ruta_tiene_segmento 
			inner join Segmento on Segmento.CodS = ruta_tiene_segmento.CodS
		where Segmento.NombreC = 'Avenida de America' 
			and Segmento.NombreM = 'Alcorcon'
		group by ruta_tiene_segmento.CodRuta
		having count(Segmento.CodS) = (	
			select count(Segmento.CodS)
			from Segmento  
			where Segmento.NombreC = 'Avenida de America' 
				and Segmento.NombreM = 'Alcorcon'
		)
	) t1 
		inner join Reparto on Reparto.CodRuta = t1.ruta 
        inner join Paquete on Paquete.CodRep = Reparto.CodRep
	group by t1.ruta, Reparto.CodRep

	UNION

	select t1.ruta as rutas, Reparto.CodRep as reparto, count(Reparto.CodRep) as numero_de_repartos, 'carta certificada' as tipo
	from (
		select ruta_tiene_segmento.CodRuta as ruta, count(Segmento.CodS) 
		from ruta_tiene_segmento 
			inner join Segmento on Segmento.CodS = ruta_tiene_segmento.CodS
		where Segmento.NombreC = 'Avenida de America' 
			and Segmento.NombreM = 'Alcorcon'
		group by ruta_tiene_segmento.CodRuta
		having count(Segmento.CodS) = (	
			select count(Segmento.CodS)
			from Segmento  
			where Segmento.NombreC = 'Avenida de America' 
				and Segmento.NombreM = 'Alcorcon'
		)
	) t1 
		inner join Reparto on Reparto.CodRuta = t1.ruta 
        inner join Carta_Certificada on Carta_Certificada.CodR = Reparto.CodRep
	group by t1.ruta,Reparto.CodRep
) temporal1
group by temporal1.rutas
having sum(temporal1.numero_de_repartos) > 3