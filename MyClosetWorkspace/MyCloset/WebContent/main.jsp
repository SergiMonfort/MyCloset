<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css/estilo.css">
<title>MyCloset - Menú</title>
	<script src="js/script.js" type="text/javascript"></script>
</head>
<body>
 <div class="topnav">
  <a class="active" href="main.jsp">Home</a>
  <a href="miarmario.jsp">Mi armario</a>
  <a href="proximamente.jsp">Proximamente</a>
  <a href="contacto.jsp">¿Quienes somos?</a>
</div> 
<br>

  <!-- <button type="button" id="buttonext"><img src="images/chaquetarosarosa.png" width="220px" height= "220px"/>Arriba exterior</button>  -->
  <button type="button" onclick="location.href='eleccion.jsp'" id="buttonint"><img src="images/camisaazulrosa.png" width="220px" height= "220px"/>Arriba</button> 
  <button type="button" onclick="location.href='eleccion2.jsp'"id="buttondown"><img src="images/pantaloncitorosa.png" width="220px" height= "220px"/>Abajo</button> 
  <button type="button" onclick="location.href='eleccion3.jsp'"id="buttonshoe"><img src="images/botasrosa.png" width="220px" height= "220px"/>Calzado</button> 
  <br>
  <br>
 <footer>
  <p id="footero">MyCloset (2019)</p>
</footer> 
</body>
</html>