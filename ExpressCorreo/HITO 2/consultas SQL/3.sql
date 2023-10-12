select distinct Usuario.CodU, Usuario.Nombre, Usuario.Apellidos, Direccion.Id as idDireccion, Direccion.Piso, Direccion.Puerta, Direccion.Numero, Direccion.Portal, Direccion.NombreC, Direccion.NombreM, 'carta' as tipo
from Usuario 
	inner join Carta on Carta.CodU_envia = Usuario.CodU 
    inner join Direccion on Direccion.Id = Usuario.id_direccion 
    inner join Calle_Municipio on Calle_Municipio.NombreC = Direccion.NombreC 
    inner join Segmento on Segmento.NombreC = Calle_Municipio.NombreC 
    inner join Area_Envio on Area_Envio.CodA = Segmento.CodA
where Carta.CodU_recibe in ( 
	select distinct Carta.CodU_recibe 
	from Carta 
		inner join Usuario on Usuario.CodU = Carta.CodU_recibe 
        inner join Direccion on Direccion.Id = Usuario.id_direccion 
        inner join Calle_Municipio on Calle_Municipio.NombreC = Direccion.NombreC 
        inner join Segmento on Segmento.NombreC = Calle_Municipio.NombreC 
        inner join Area_Envio on Area_Envio.CodA = Segmento.CodA
	where Area_Envio.CodA='AR-MAD-O3'
)

union

select distinct Usuario.CodU, Usuario.Nombre, Usuario.Apellidos, Direccion.Id as idDireccion, Direccion.Piso, Direccion.Puerta, Direccion.Numero, Direccion.Portal, Direccion.NombreC, Direccion.NombreM, 'carta certificada' as tipo
from Usuario 
	inner join Usuario_Real on Usuario_Real.CodU = Usuario.CodU 
    inner join Carta_Certificada on Carta_Certificada.DNI_usuarioRealEnvia = Usuario_Real.DNI 
    inner join Direccion on Direccion.Id = Usuario.id_direccion 
    inner join Calle_Municipio on Calle_Municipio.NombreC = Direccion.NombreC 
    inner join Segmento on Segmento.NombreC = Calle_Municipio.NombreC 
    inner join Area_Envio on Area_Envio.CodA = Segmento.CodA 
where Carta_Certificada.DNI_usuarioRealRecibe in ( 
	select distinct Carta_Certificada.DNI_usuarioRealRecibe
	from Usuario 
		inner join Usuario_Real on Usuario_Real.CodU = Usuario.CodU 
        inner join Carta_Certificada on Carta_Certificada.DNI_usuarioRealRecibe = Usuario_Real.DNI 
        inner join Direccion on Direccion.Id = Usuario.id_direccion 
        inner join Calle_Municipio on Calle_Municipio.NombreC = Direccion.NombreC 
        inner join Segmento on Segmento.NombreC = Calle_Municipio.NombreC 
        inner join Area_Envio on Area_Envio.CodA=Segmento.CodA
	where Area_Envio.CodA='AR-MAD-O3'
);