SELECT DISTINCT
    Oficina.CodO
FROM
    Oficina
        INNER JOIN
    Area_Envio ON Area_Envio.CodO = Oficina.CodO
        INNER JOIN
    Segmento ON Segmento.CodA = Area_Envio.CodA
        INNER JOIN
    Calle_Municipio ON Calle_Municipio.NombreC = Segmento.NombreC
        INNER JOIN
    Municipio ON Municipio.NombreM = Calle_Municipio.NombreM
        INNER JOIN
    Provincia ON Provincia.CodP = Municipio.CodP
WHERE
    Calle_Municipio.NombreC LIKE 'Paseo de%'
        AND Municipio.NombreM = 'Alcobendas'
        AND Provincia.Nombre = 'Madrid';