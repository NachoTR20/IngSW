DELIMITER $$
CREATE PROCEDURE carta_certificada_usuarios_receptores_dni(in idcartaCertificada int)
BEGIN
	select distinct Carta_Certificada.DNI_usuarioRealEnvia, Carta_Certificada.Id, Carta_Certificada.DNI_usuarioRealRecibe, '#' as separador, Usuario_Real.DNI_autoriza 
    from Carta_Certificada 
		inner join Usuario_Real on Usuario_Real.DNI = Carta_Certificada.DNI_usuarioRealEnvia
    where Carta_Certificada.Id = idcartaCertificada;
END$$
DELIMITER ;


#llamada
call carta_certificada_usuarios_receptores_dni(6); #datos ejm 1,6,7
