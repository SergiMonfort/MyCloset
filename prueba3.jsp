<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/css2.css">
	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	
	<title>Custom Radio Buttons y Checkboxes</title>
</head>
<body>
	<div class="wrap">
		<div class="info">
			<h1>Radio Buttons y Checkbox Personalizados</h1>
			<h2>Y Animados :D</h2>
			<p>Por: <a href="http://www.twitter.com/falconmasters">Carlos Arturo</a> - <a href="http://www.falconmasters.com">FalconMasters</a></p>
		</div>
		<form action="" class="formulario">
			<div class="radio">
				<h2>Radio Buttons</h2>
				<input type="radio" name="sexo" id="hombre">
				<label for="hombre" >Hombre</label>
		
				<input type="radio" name="sexo" id="mujer">
				<label for="mujer">Mujer</label>
		
				<input type="radio" name="sexo" id="alien">
				<label for="alien">Alien</label>
			</div>
		
			<div class="checkbox">
				<h2>Checkboxines :D</h2>
				<input type="checkbox" name="checkbox" id="checkbox1">
				<label for="checkbox1" id="hombre1">Checkboxin 1</label>
		
				<input type="checkbox" name="checkbox" id="checkbox2">
				<label for="checkbox2">Checkboxin 2</label>
			</div>
		</form>
	</div>
</body>
</html>