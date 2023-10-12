<html>
<head>
<title>Cine</title>
</head>
<body>
<?php
if (!(isset($_GET['varID']))){
?>
<form>
<h1>Cine</h1>
ID: <input name="varID" type="text" value="" >
Capacidad: <input name="varCapacidad" type="text" value="" >
<input type="submit" value="Alta" />
</form>
<?php
}
else {
$conex = mysqli_connect("localhost","root") or die("ERROR...");
mysqli_select_db($conex,"dcjitrfpfproyectoips") or die("ERROR CON LA BASE DE DATOS");
$ID = $_GET['varID'];
$Capacidad = $_GET['varCapacidad'];
$resultado = mysqli_query($conex,"INSERT INTO Cine VALUES('$ID','$Capacidad')");
if ($resultado)
 echo" <b>Datos Insertados</b> ";
else
 echo"Error en la insercion";
mysqli_close($conex);
}
?>
</body>
</html>
