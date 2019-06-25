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
			<button type="button" onclick="location.href='arriba'"
				id="buttonint">
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
			<button type="button" onclick="location.href='eleccion3.jsp'" id="buttonshoe">
			<img src="images/botasrosa.png" width="220px" height="220px" />
			</button>
		</div>
	</div>
	<hr>

	<!-- /container --> </main>

<%@ include file = "include/footer.jsp" %>
</body>
</html>