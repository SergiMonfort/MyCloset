<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/css.css">
<link rel="stylesheet" href="css/estilo.css">
<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
</head>
<body>
<div class="topnav">
		
			<a class="active" href="main.jsp">Home</a> <a href="miarmario.jsp">Mi
			armario</a> <a href="proximamente.jsp">Proximamente</a>
			 <a href="contacto.jsp">¿Quienes somos?</a>
		</div>
		<form action="algoritmo.jsp" method="post" class="formulario" >
		<div class="checkbox1">
			<div class="checkbox"  id ="bloque1">
				<h2>Camiseta<img src="imagenes/camiseta.png" align="left" id="pacamiseta"  > </h2>
				<br>
				<input type="checkbox" name="camiseta" id="checkbox1" value="blanco">
				<label for="checkbox1" id="blanco">Blanco</label>
		
				<input type="checkbox" name="camiseta" id="checkbox2" value="beige">
				<label for="checkbox2" id= "beige">Beige</label>
				
				<input type="checkbox" name="camiseta" id="checkbox3" value="gris">
				<label for="checkbox3" id="gris">Gris  </label>
				
				<input type="checkbox" name="camiseta" id="checkbox4" value="cielo">
				<label for="checkbox4" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="camiseta" id="checkbox5" value="rosa">
				<label for="checkbox5" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="camiseta" id="checkbox6" value="amarillo">
				<label for="checkbox6" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="camiseta" id="checkbox7" value="naranja">
				<label for="checkbox7" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="camiseta" id="checkbox8" value="negro">
				<label for="checkbox8" id= "negro">Negro</label>
				
				<input type="checkbox" name="camiseta" id="checkbox9" value="marron">
				<label for="checkbox9" id= "marron">Marron</label>
				
				<input type="checkbox" name="camiseta" id="checkbox10" value="marino">
				<label for="checkbox10" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="camiseta" id="checkbox11" value="verde">
				<label for="checkbox11" id ="verde">Verde</label>
				
				<input type="checkbox" name="camiseta" id="checkbox12" value="rojo">
				<label for="checkbox12" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="camiseta" id="checkbox13" value="morodo">
				<label for="checkbox13" id ="morado">Morado</label>
				
				</div>
				</div>
				
				<div class="checkbox2">
				<div class="checkbox" id ="bloque2">
				<h2>Camisa<img src="imagenes/camisa.png" align="left" id="pacamisa"> </h2>
				<br>
				
				<input type="checkbox" name="camisa" id="camisablanco" value="blanco">
				<label for="camisablanco" id="blanco">Blanco</label>
		
				<input type="checkbox" name="camisa" id="camisabeige" value="beige">
				<label for="camisabeige" id= "beige">Beige</label>
				
				<input type="checkbox" name="camisa" id="camisagris" value="gris">
				<label for="camisagris" id="gris">Gris</label>
				
				<input type="checkbox" name="camisa" id="camisaazulcielo" value="cielo">
				<label for="camisaazulcielo" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="camisa" id="camisarosa" value="rosa">
				<label for="camisarosa" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="camisa" id="camisaamarilla" value="amarillo">
				<label for="camisaamarilla" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="camisa" id="camisanaranja" value="naranja">
				<label for="camisanaranja" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="camisa" id="camisanegro" value="negro">
				<label for="camisanegro" id= "negro">Negro</label>
				
				<input type="checkbox" name="camisa" id="camisamarron" value="marron">
				<label for="camisamarron" id= "marron">Marron</label>
				
				<input type="checkbox" name="camisa" id="camisaazulmarino" value="marino">
				<label for="camisaazulmarino" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="camisa" id="camisaverde" value="verde">
				<label for="camisaverde" id ="verde">Verde</label>
				
				<input type="checkbox" name="camisa" id="camisarojo" value="rojo">
				<label for="camisarojo" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="camisa" id="camisamorado" value="morado">
				<label for="camisamorado" id ="morado">Morado</label>
			
			</div>
			</div>
			<div class="checkbox3">
			<div class="checkbox" id ="bloque">
				<h2>Polo<img src="imagenes/polo.png" align="left" id="papolo"> </h2>
				<br><br>
				
				<input type="checkbox" name="polo" id="poloblanco" value="blanco">
				<label for="poloblanco" id="blanco">Blanco</label>
		
				<input type="checkbox" name="polo" id="polobeige" value="beige">
				<label for="polobeige" id= "beige">Beige</label>
				
				<input type="checkbox" name="polo" id="pologris" value="gris">
				<label for="pologris" id="gris">Gris</label>
				
				<input type="checkbox" name="polo" id="poloazulcielo" value="cielo">
				<label for="poloazulcielo" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="polo" id="polorosa" value="rosa">
				<label for="polorosa" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="polo" id="poloamarillo" value="amarillo">
				<label for="poloamarillo" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="polo" id="polonaranja" value="naranja">
				<label for="polonaranja" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="polo" id="polonegro" value="negro">
				<label for="polonegro" id= "negro">Negro</label>
				
				<input type="checkbox" name="polo" id="polomarron" value="polo">
				<label for="polomarron" id= "marron">Marron</label>
				
				<input type="checkbox" name="polo" id="poloazulmarino" value="marino">
				<label for="poloazulmarino" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="polo" id="poloverde" value="verde">
				<label for="poloverde" id ="verde">Verde</label>
				
				<input type="checkbox" name="polo" id="polorojo" value="rojo">
				<label for="polorojo" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="polo" id="polomorado" value="morado">
				<label for="polomorado" id ="morado">Morado</label>
				
			</div>
			</div>
			
			
				<div class="checkbox4">
			<div class="checkbox" id ="bloque" >
				<h2>Jersey <img src="imagenes/jersey.png" align="left" id="jersey"> </h2>
				
				<br><br>
				<input type="checkbox" name="jersey" id="jerseyblanco" value="blanco">
				<label for="jerseyblanco" id="blanco">Blanco</label>
		
				<input type="checkbox" name="jersey" id="jerseybeige" value="beige">
				<label for="jerseybeige" id= "beige">Beige</label>
				
				<input type="checkbox" name="jersey" id="jerseygris" value="gris">
				<label for="jerseygris" id="gris">Gris</label>
				
				<input type="checkbox" name="jersey" id="jerseyazulcielo" value="cielo">
				<label for="jerseyazulcielo" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="jersey" id="jerseyrosa" value="rosa">
				<label for="jerseyrosa" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="jersey" id="jerseyamarillo" value="amarillo">
				<label for="jerseyamarillo" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="jersey" id="jerseynaranja" value="naranja">
				<label for="jerseynaranja" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="jersey" id="jerseynegro" value="negro">
				<label for="jerseynegro" id= "negro">Negro</label>
				
				<input type="checkbox" name="jersey" id="jerseymarron" value="marron">
				<label for="jerseymarron" id= "marron">Marron</label>
				
				<input type="checkbox" name="jersey" id="jerseyazulmarino" value="marino">
				<label for="jerseyazulmarino" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="jersey" id="jerseyverde" value="verde">
				<label for="jerseyverde" id ="verde">Verde</label>
				
				<input type="checkbox" name="jersey" id="jerseyrojo" value="rojo">
				<label for="jerseyrojo" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="jersey" id="jerseymorado" value="morado">
				<label for="jerseymorado" id ="morado">Morado</label>
		
			
			</div></div>
			<br>
			<br>
			<br>
				<input type="submit" value="Siguiente" />
		</form>
	
</body>
</html>