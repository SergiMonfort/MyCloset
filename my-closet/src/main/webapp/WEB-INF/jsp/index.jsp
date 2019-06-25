<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=yes">
<!-- Access the bootstrap Css like this,
        Spring boot will handle the resource mapping automcatically -->
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" />


<!-- <spring:url value="/css/main.css" var="springCss" /> -->
<!-- <link href="${springCss}" rel="stylesheet" /> -->

<!-- <%-- -->
<!-- <c:url value="/css/main.css" var="jstlCss" /> -->
<!-- --%> <%-- -->
<!-- <link href="${jstlCss}" rel="stylesheet" /> -->
<!-- --%> -->


</head>
<body>

	<%@ include file = "include/navbar.jsp" %>

	<main role="main"> <!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">${clave}</h1>
			<p>Empecemos a llenar tu armario. Elige todas las prendas que
				tengas de cada tipo.</p>
			<p>
		</div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<h2>Parte de Arriba</h2>
			<button type="button" onclick="location.href='arriba'" id="buttonint">
				<img src="images/camisaazulrosa.png" width="220px" height="220px" />
			</button>
		</div>
		<div class="col-md-4">
			<h2>Parte de Abajo</h2>
			<button type="button" onclick="location.href='eleccion2.jsp'"
				id="buttondown">
				<img src="images/pantaloncitorosa.png" width="220px" height="220px" />
			</button>
		</div>
		<div class="col-md-4">
			<h2>Calzado</h2>
			<button type="button" onclick="location.href='eleccion3.jsp'"
				id="buttonshoe">
				<img src="images/botasrosa.png" width="220px" height="220px" />
			</button>
		</div>
	</div>
	<hr>

	<div class="checkbox1">
		<div class="checkbox" id="bloque1">
			<h2>
				Camiseta<img src="images/camiseta.png" align="left" id="pacamiseta">
			</h2>
			<br>
			<!-- lo que interea de cara a la  BD es en NAME y VALUE
			ya que todo forma parte de un mismo action, si es necesario puedes borrar los demas action de eleccion2 y 3 (ya que no se si deban o no
			existir ahi puesto que en realidad todo forma parte de la misma pagina, pregunta a airton-->
			
			<input type="checkbox" name="camiseta" id="checkbox1" value="blanco">
			<label for="checkbox1" id="blanco">Blanco</label> 
			
			<input
				type="checkbox" name="camiseta" id="checkbox2" value="beige">
			<label for="checkbox2" id="beige">Beige</label> <input
				type="checkbox" name="camiseta" id="checkbox3" value="gris">
			<label for="checkbox3" id="gris">Gris </label> <input type="checkbox"
				name="camiseta" id="checkbox4" value="cielo"> <label
				for="checkbox4" id="AzulCielo">Cielo</label> <input type="checkbox"
				name="camiseta" id="checkbox5" value="rosa"> <label
				for="checkbox5" id="rosa">Rosa</label> <input type="checkbox"
				name="camiseta" id="checkbox6" value="amarillo"> <label
				for="checkbox6" id="amarillo">Amarillo</label> <input
				type="checkbox" name="camiseta" id="checkbox7" value="naranja">
			<label for="checkbox7" id="naranja">Naranja</label> <input
				type="checkbox" name="camiseta" id="checkbox8" value="negro">
			<label for="checkbox8" id="negro">Negro</label> <input
				type="checkbox" name="camiseta" id="checkbox9" value="marron">
			<label for="checkbox9" id="marron">Marron</label> <input
				type="checkbox" name="camiseta" id="checkbox10" value="marino">
			<label for="checkbox10" id="azulmarino">Marino</label> <input
				type="checkbox" name="camiseta" id="checkbox11" value="verde">
			<label for="checkbox11" id="verde">Verde</label> <input
				type="checkbox" name="camiseta" id="checkbox12" value="rojo">
			<label for="checkbox12" id="rojo">Rojo</label> <input type="checkbox"
				name="camiseta" id="checkbox13" value="morodo"> <label
				for="checkbox13" id="morado">Morado</label>

		</div>
	</div>









	<!-- /container --> </main>

	<%@ include file = "include/footer.jsp" %>
</body>
</html>