<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/css.css">
<link rel="stylesheet" href="css/estilo.css">
<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="js/js.js" type="text/javascript"> 
</script>
<script>  
$(document).ready( function() {  
      $("#botonenviar").click(function(){
           
                $("#contenidoExterno").load("eleccion2.jsp");
           
           
           });

});


</script>
<title>Arriba</title>
</head>
<body>
<div class="topnav">
		
			<a class="active" href="main.jsp">Home</a> <a href="miarmario.jsp">Mi
			armario</a> <a href="proximamente.jsp">Proximamente</a>
			 <a href="contacto.jsp">¿Quienes somos?</a>
			 </div>
			 
			 
	<div id="contenidoExterno">  </div>
		
	 <fieldset>	
		
		<form action="algoritmo.jsp" method="post" class="formulario" >
		
		
		<div class="checkbox1">
			<div class="checkbox"  id ="bloque1">
				<h2>Camiseta<img src="imagenes/camiseta.png" align="left" id="pacamiseta"  > </h2>
				<br>
				<input type="checkbox" name="1" id="checkbox1" value="1">
				<label for="checkbox1" id="blanco">Blanco</label>
		
				<input type="checkbox" name="2" id="checkbox2" value="2">
				<label for="checkbox2" id= "beige">Beige</label>
				
				<input type="checkbox" name="3" id="checkbox3" value="3">
				<label for="checkbox3" id="gris">Gris  </label>
				
				<input type="checkbox" name="4" id="checkbox4" value="4">
				<label for="checkbox4" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="5" id="checkbox5" value="5">
				<label for="checkbox5" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="6" id="checkbox6" value="6">
				<label for="checkbox6" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="7" id="checkbox7" value="7">
				<label for="checkbox7" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="8" id="checkbox8" value="8">
				<label for="checkbox8" id= "negro">Negro</label>
				
				<input type="checkbox" name="9" id="checkbox9" value="9">
				<label for="checkbox9" id= "marron">Marron</label>
				
				<input type="checkbox" name="10" id="checkbox10" value="10">
				<label for="checkbox10" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="11" id="checkbox11" value="11">
				<label for="checkbox11" id ="verde">Verde</label>
				
				<input type="checkbox" name="12" id="checkbox12" value="12">
				<label for="checkbox12" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="13" id="checkbox13" value="13">
				<label for="checkbox13" id ="morado">Morado</label>
				
				</div>
				</div>
				
				<div class="checkbox2">
				<div class="checkbox" id ="bloque2">
				<h2>Camisa<img src="imagenes/camisa.png" align="left" id="pacamisa"> </h2>
				<br>
				
				<input type="checkbox" name="14" id="camisablanco" value="14">
				<label for="camisablanco" id="blanco">Blanco</label>
		
				<input type="checkbox" name="15" id="camisabeige" value="15">
				<label for="camisabeige" id= "beige">Beige</label>
				
				<input type="checkbox" name="16" id="camisagris" value="16">
				<label for="camisagris" id="gris">Gris</label>
				
				<input type="checkbox" name="17" id="camisaazulcielo" value="17">
				<label for="camisaazulcielo" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="18" id="camisarosa" value="18">
				<label for="camisarosa" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="19" id="camisaamarilla" value="19">
				<label for="camisaamarilla" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="20" id="camisanaranja" value="20">
				<label for="camisanaranja" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="21" id="camisanegro" value="21">
				<label for="camisanegro" id= "negro">Negro</label>
				
				<input type="checkbox" name="22" id="camisamarron" value="22">
				<label for="camisamarron" id= "marron">Marron</label>
				
				<input type="checkbox" name="23" id="camisaazulmarino" value="23">
				<label for="camisaazulmarino" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="24" id="camisaverde" value="24">
				<label for="camisaverde" id ="verde">Verde</label>
				
				<input type="checkbox" name="25" id="camisarojo" value="25">
				<label for="camisarojo" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="26" id="camisamorado" value="26">
				<label for="camisamorado" id ="morado">Morado</label>
			
			</div>
			</div>
			<div class="checkbox3">
			<div class="checkbox" id ="bloque">
				<h2>Polo<img src="imagenes/polo.png" align="left" id="papolo"> </h2>
				<br><br>
				
				<input type="checkbox" name="27" id="poloblanco" value="27">
				<label for="poloblanco" id="blanco">Blanco</label>
		
				<input type="checkbox" name="28" id="polobeige" value="28">
				<label for="polobeige" id= "beige">Beige</label>
				
				<input type="checkbox" name="29" id="pologris" value="29">
				<label for="pologris" id="gris">Gris</label>
				
				<input type="checkbox" name="30" id="poloazulcielo" value="30">
				<label for="poloazulcielo" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="31" id="polorosa" value="31">
				<label for="polorosa" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="32" id="poloamarillo" value="32">
				<label for="poloamarillo" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="33" id="polonaranja" value="33">
				<label for="polonaranja" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="34" id="polonegro" value="34">
				<label for="polonegro" id= "negro">Negro</label>
				
				<input type="checkbox" name="35" id="polomarron" value="35">
				<label for="polomarron" id= "marron">Marron</label>
				
				<input type="checkbox" name="36" id="poloazulmarino" value="36">
				<label for="poloazulmarino" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="37" id="poloverde" value="37">
				<label for="poloverde" id ="verde">Verde</label>
				
				<input type="checkbox" name="38" id="polorojo" value="38">
				<label for="polorojo" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="39" id="polomorado" value="39">
				<label for="polomorado" id ="morado">Morado</label>
				
			</div>
			</div>
			
			
				<div class="checkbox4">
			<div class="checkbox" id ="bloque" >
				<h2>Jersey <img src="imagenes/jersey.png" align="left" id="jersey"> </h2>
				
				<br><br>
				<input type="checkbox" name="40" id="jerseyblanco" value="40">
				<label for="jerseyblanco" id="blanco">Blanco</label>
		
				<input type="checkbox" name="41" id="jerseybeige" value="41">
				<label for="jerseybeige" id= "beige">Beige</label>
				
				<input type="checkbox" name="42" id="jerseygris" value="42">
				<label for="jerseygris" id="gris">Gris</label>
				
				<input type="checkbox" name="43" id="jerseyazulcielo" value="43">
				<label for="jerseyazulcielo" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="44" id="jerseyrosa" value="44">
				<label for="jerseyrosa" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="45" id="jerseyamarillo" value="45">
				<label for="jerseyamarillo" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="46" id="jerseynaranja" value="46">
				<label for="jerseynaranja" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="47" id="jerseynegro" value="47">
				<label for="jerseynegro" id= "negro">Negro</label>
				
				<input type="checkbox" name="48" id="jerseymarron" value="48">
				<label for="jerseymarron" id= "marron">Marron</label>
				
				<input type="checkbox" name="49" id="jerseyazulmarino" value="49">
				<label for="jerseyazulmarino" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="50" id="jerseyverde" value="50">
				<label for="jerseyverde" id ="verde">Verde</label>
				
				<input type="checkbox" name="51" id="jerseyrojo" value="51">
				<label for="jerseyrojo" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="52" id="jerseymorado" value="52">
				<label for="jerseymorado" id ="morado">Morado</label>
		
			    
			</div></div>
			<br>
			<br>
			<br>
				<input type="button" id="botonenviar" value="Siguiente">
				
				
				
		</form>
		</fieldset>
	
</body>
</html>