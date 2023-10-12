SELECT DISTINCT
    Cartero.Nombre,
    Cartero.Apellido,
    Reparto.Matricula,
    Paquete.Peso
FROM
    Cartero
        INNER JOIN
    Paquete ON Cartero.DNI = Paquete.DNI_cartero
        INNER JOIN
    Reparto ON Reparto.DNI = Cartero.DNI
WHERE
    Paquete.Peso = (SELECT 
            MIN(Paquete.Peso)
        FROM
            Paquete)