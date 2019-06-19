<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css/estilo.css">
<title>Mi armario</title>
</head>
<script type="text/javascript">
function checkbox(val){
document.getElementById("show").value = val;
}
</script>
<body>
 <div class="topnav">
  <a href="main.jsp" href="main.jsp">Home</a>
  <a class="active" href="miarmario.jsp">Mi armario</a>
  <a href="proximamente.jsp">Proximamente</a>
  <a href="contacto.jsp">¿Quienes somos?</a>
</div> 
<h1 id="miarmario">Mi armario</h1>
<p id="vacio">Tu armario está vacío<p>
<p id="anade"><strong>¿Quieres añadir prendas?</strong></p> <!-- Convertir en a href cuando
									 se tenga la página de selección -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
 <footer>
   <p id="footero">MyCloset (2019)</p>
</footer> 
</body>
</html>