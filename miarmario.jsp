<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css/estilo.css">
 <script src="js/js.js"> </script>
<script> 

/*for (var i=0; i<casual.length; i++) {
	if (casual[i].checked === true) {
	mensaje =  mensaje + "\n" + casual[i].value + " "}
}*/
window.onload = function(){	
var checkedValue = null; 
var casual = document.getElementsByName('casual');
for(var i=0; casual[i]; ++i){
      if(casual[i].checked){
           checkedValue = casual[i].value;
       
      }
}

document.getElementById('resultados').innerHTML = checkedValue;
}


</script>
<title>Mi armario</title>
</head>

<body>
 <div class="topnav">
  <a href="main.jsp" href="main.jsp">Home</a>
  <a class="active" href="miarmario.jsp">Mi armario</a>
  <a href="proximamente.jsp">Proximamente</a>
  <a href="contacto.jsp">¿Quienes somos?</a>
</div> 
<h1 id="miarmario">Mi armario</h1>

									 
<div>
<%

Object casual = request.getAttribute("casual");



	/*String col[] = new String [14];
	for (int i=0; i<14; i++){
		col[i]="<p>"+request.getParameter("camiseta"+i)+"</p>";
	}*/
	
	
	 if(casual == null /*| mensaje.isEmpty()*/){
		 %>
		 
		 
		 <p id="vacio">Tu armario está vacío<p>
		 <p id="anade"><a href="main.jsp"><strong>¿Quieres añadir prendas?</strong></a></p> 
		 
		<p id="resultado">	<%= casual%></p>
		
		 <% 
		 
	 }
		
	 else{
		 %>
		 
		<div id="resultados">
		<%= casual%>
		</div>
		
		 <%  
	 }
%>

</div>
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