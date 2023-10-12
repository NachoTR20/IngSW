<html>
<head>
<title>Cliente</title>
</head>
<body>
<?php
if (!(isset($_GET['varID']))){
?>
<form>
<h1>Cliente</h1>
ID: <input name="varID" type="text" value="" >
<input type="submit" value="Alta" />
</form>
<?php
}
else {
$conex = mysqli_connect("localhost","root") or die("ERROR...");
mysqli_select_db($conex,"dcjitrfpfproyectoips") or die("ERROR CON LA BASE DE DATOS");
$ID = $_GET['varID'];
$resultado = mysqli_query($conex,"INSERT INTO Cliente VALUES('$ID')");
if ($resultado)
 echo" <b>Datos Insertados</b> ";
else
 echo"Error en la insercion";
mysqli_close($conex);
}
?>
</body>
</html>
