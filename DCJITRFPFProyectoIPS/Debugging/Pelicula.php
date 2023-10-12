<html>
<head>
<title>Pelicula</title>
</head>
<body>
<?php
if (!(isset($_GET['varNombre']))){
?>
<form>
<h1>Pelicula</h1>
Nombre: <input name="varNombre" type="text" value="" >
<input type="submit" value="Alta" />
</form>
<?php
}
else {
$conex = mysqli_connect("localhost","root") or die("ERROR...");
mysqli_select_db($conex,"dcjitrfpfproyectoips") or die("ERROR CON LA BASE DE DATOS");
$Nombre = $_GET['varNombre'];
$resultado = mysqli_query($conex,"INSERT INTO Pelicula VALUES('$Nombre')");
if ($resultado)
 echo" <b>Datos Insertados</b> ";
else
 echo"Error en la insercion";
mysqli_close($conex);
}
?>
</body>
</html>
