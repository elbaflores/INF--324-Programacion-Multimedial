<html>
<body>
<?php
include "conexion.inc.php";
echo "CONEXION A SISTEMA ACADEMICO UMSA <br/>";

?>

	<head>
		<title>ACADEMICO</title>
		<link href="hojadeestilos.css" rel="stylesheet"/>
	</head>
			<div id="cabecera">
			<H1>LOGIN IDENTIFICADOR</H1>
		</div>
		<div id="menu">
			
			USUARIO <br>
			<img src=imagen.jpg width="100" height="100">
			<br>
		</div>

		<div class="cuerpo">
			<h1>
			LOGIN
			</h1>
			<form action="/my-handling-form-page" method="post"> 
 			
  			<li>
    		<label for="name">CI:</label>
    		<input type="text" id="name" name="user_name" />
  			</li>
  			<li>
    		<label for="mail">Clave:</label>
    		<input type="email" id="mail" name="user_email" />
  			</li>
  			
   
		</div>

<a href='examen.php'>Volver al inicio</a>
</body>
<html>