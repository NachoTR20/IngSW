<html>
<head>
<title>PeliculaVeCliente</title>
</head>
<body>
<?php
if (!(isset($_GET['varNombre']))){
if (!(isset($_GET['varID']))){
?>
<form>
<h1>PeliculaVeCliente</h1>
Nombre: <input name="varNombre" type="text" value="" >
ID: <input name="varID" type="text" value="" >
<input type="submit" value="Alta" />
</form>
<?php
}}
else {
$conex = mysqli_connect("localhost","root") or die("ERROR...");
mysqli_select_db($conex,"dcjitrfpfproyectoips") or die("ERROR CON LA BASE DE DATOS");
$Nombre = $_GET['varNombre'];
$ID = $_GET['varID'];
$resultado = mysqli_query($conex,"INSERT INTO PeliculaVeCliente VALUES('$Nombre','$ID')");
if ($resultado)
 echo" <b>Datos Insertados</b> ";
else
 echo"Error en la inserción";
mysqli_close($conex);
}
?>
</body>
</html>
