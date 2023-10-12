select distinct Recogida_paquete.DNI_cartero
from Recogida_paquete
where Recogida_paquete.DNI_cartero not in ( 
	select t1.DNIcartero
	from (
		select Recogida_paquete.DNI_cartero as DNIcartero, Recogida_paquete.ID_direccion, count( Recogida_paquete.ID_direccion) as cantidad_direcciones_repetidas
		from Recogida_paquete
		group by Recogida_paquete.DNI_cartero, Recogida_paquete.ID_direccion
		having cantidad_direcciones_repetidas > 1
	) t1
)