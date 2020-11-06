<html>
<body>
<?php
include "conexion.inc.php";
echo "ACADEMICO <br/>";
/*
$sql ="insert into alumno(id, nombre, apellido) ";
$sql.="values (6,'moyo','silva')";
mysqli_query($conn, $sql);
*/
$sql = "select * from identificador";
$resultado = mysqli_query($conn, $sql);
/*
$extraccion = mysqli_fetch_array($resultado);
print_r($resultado);
echo "<br/>";
print_r($extraccion);
*/
?>
<table border="1px">
	<tr>
		<td>ci</td>
		<td>nombre</td>
		<td>fecha nacimiento</td>
		<td>residencia</td>
		<td>codigo</td>
	</tr>
<?php
while ($fila = mysqli_fetch_row($resultado))
{
	//print_r($fila);
	echo "<tr>";
	echo "<td><a href='login.php?id=".$fila[0]."'>".$fila[0]."</td>";
	echo "<td>".$fila[1]."</td>";
	echo "<td>".$fila[2]."</td>";
	echo "<td>".$fila[3]."</td>";
	echo "<td>".$fila[4]."</td>";
	echo "<tr>";
}
?>
</table>
</body>
<html>