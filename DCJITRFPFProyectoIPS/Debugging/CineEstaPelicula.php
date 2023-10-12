<html>
<head>
<title>CineEstaPelicula</title>
</head>
<body>
<?php
if (!(isset($_GET['varID']))){
if (!(isset($_GET['varNombre']))){
?>
<form>
<h1>CineEstaPelicula</h1>
ID: <input name="varID" type="text" value="" >
Nombre: <input name="varNombre" type="text" value="" >
Sala: <input name="varSala" type="text" value="" >
<input type="submit" value="Alta" />
</form>
<?php
}}
else {
$conex = mysqli_connect("localhost","root") or die("ERROR...");
mysqli_select_db($conex,"dcjitrfpfproyectoips") or die("ERROR CON LA BASE DE DATOS");
$ID = $_GET['varID'];
$Nombre = $_GET['varNombre'];
$Sala = $_GET['varSala'];
$resultado = mysqli_query($conex,"INSERT INTO CineEstaPelicula VALUES('$ID','$Nombre', '$Sala')");
if ($resultado)
 echo" <b>Datos Insertados</b> ";
else
 echo"Error en la inserción";
mysqli_close($conex);
}
?>
</body>
</html>
