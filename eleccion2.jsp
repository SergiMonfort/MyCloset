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
      $("#botonenviar2").click(function(){
          
                $("#contenidoExterno2").load("eleccion3.jsp");
           
           
           });

});
<!--
//selector sobre el form seguido de la función submit
$("#prueba").submit(function(){
        //de esta manera remplazamos
 
        //ahora obtendremos los atributos que necesitaremos
        url=$(this).prop("action")
        //la función serialize nos regresa los input, es importante ponerles name
        painput=$(this).serialize()
 
        //aqui utilizamos la petición, en este caso post
        $.post(url,painput,function(data){
            //aqui es cuando ya se hizo nuestra petición
            //regularmente yo regreso 1 para mostrar exito
                if(data=="1"){
                    alert("exito")
                }else{
                    //si no regreso el 1, regreso el error y asi lo muestro
                    alert(data)
                }
        }) 
        //ESTO ES MUY IMPORTANTE, YA QUE SI NO SE PONE SE REALIZA LAS DOS PETICIONES
        //TANTO AJAX COMO LA PETICIÓN NORMAL DE FORMULARIO
        //REFRESCANDO TODA LA PAGINA.
        return false;
 
        --> 

</script>
<title>Insert title here</title>
</head>
<body>

<div id="contenidoExterno2">  </div>
      <fieldset>

		<form action="prueba" method="post" class="formulario" >
		<div class="checkbox1">
			<div class="checkbox"  id ="bloque1">
				<h2>Jeans<img src="images/Prendas/Abajo/Jeans/Blanco.png" align="left" id="pacamiseta"  > </h2>
				<br>
				<input type="checkbox" name="53" id="checkbox1" value="53">
				<label for="checkbox1" id="blanco">Blanco</label>
		
				<input type="checkbox" name="54" id="checkbox2" value="54">
				<label for="checkbox2" id= "beige">Beige</label>
				
				<input type="checkbox" name="55" id="checkbox3" value="55">
				<label for="checkbox3" id="gris">Gris  </label>
				
				<input type="checkbox" name="56" id="checkbox4" value="56">
				<label for="checkbox4" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="57" id="checkbox5" value="57">
				<label for="checkbox5" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="58" id="checkbox6" value="58">
				<label for="checkbox6" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="59" id="checkbox7" value="59">
				<label for="checkbox7" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="60" id="checkbox8" value="60">
				<label for="checkbox8" id= "negro">Negro</label>
				
				<input type="checkbox" name="61" id="checkbox9" value="61">
				<label for="checkbox9" id= "marron">Marron</label>
				
				<input type="checkbox" name="62" id="checkbox10" value="62">
				<label for="checkbox10" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="63" id="checkbox11" value="63">
				<label for="checkbox11" id ="verde">Verde</label>
				
				<input type="checkbox" name="64" id="checkbox12" value="64">
				<label for="checkbox12" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="65" id="checkbox13" value="65">
				<label for="checkbox13" id ="morado">Morado</label>
				
				</div>
				</div>
				
				<div class="checkbox2">
				<div class="checkbox" id ="bloque2">
				<h2>Chinos<img src="images/Prendas/Abajo/Chinos/Blanco.png" align="left" id="pacamisa"> </h2>
				<br>
				
				<input type="checkbox" name="66" id="camisablanco" value="66">
				<label for="camisablanco" id="blanco">Blanco</label>
		
				<input type="checkbox" name="67" id="camisabeige" value="67">
				<label for="camisabeige" id= "beige">Beige</label>
				
				<input type="checkbox" name="68" id="camisagris" value="68">
				<label for="camisagris" id="gris">Gris</label>
				
				<input type="checkbox" name="69" id="camisaazulcielo" value="69">
				<label for="camisaazulcielo" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="70" id="camisarosa" value="70">
				<label for="camisarosa" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="71" id="camisaamarilla" value="71">
				<label for="camisaamarilla" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="72" id="camisanaranja" value="72">
				<label for="camisanaranja" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="73" id="camisanegro" value="73">
				<label for="camisanegro" id= "negro">Negro</label>
				
				<input type="checkbox" name="74" id="camisamarron" value="74">
				<label for="camisamarron" id= "marron">Marron</label>
				
				<input type="checkbox" name="75" id="camisaazulmarino" value="75">
				<label for="camisaazulmarino" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="76" id="camisaverde" value="76">
				<label for="camisaverde" id ="verde">Verde</label>
				
				<input type="checkbox" name="77" id="camisarojo" value="77">
				<label for="camisarojo" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="78" id="camisamorado" value="78">
				<label for="camisamorado" id ="morado">Morado</label>
			
			</div>
			</div>
			<div class="checkbox3">
			<div class="checkbox" id ="bloque">
				<h2>Bermudas<img src="images/Prendas/Abajo/Bermuda/Bermuda" align="left" id="papolo"> </h2>
				<br><br>
				
				<input type="checkbox" name="79" id="poloblanco" value="79">
				<label for="poloblanco" id="blanco">Blanco</label>
		
				<input type="checkbox" name="80" id="polobeige" value="80">
				<label for="polobeige" id= "beige">Beige</label>
				
				<input type="checkbox" name="81" id="pologris" value="81">
				<label for="pologris" id="gris">Gris</label>
				
				<input type="checkbox" name="82" id="poloazulcielo" value="82">
				<label for="poloazulcielo" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="83" id="polorosa" value="83">
				<label for="polorosa" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="84" id="poloamarillo" value="84">
				<label for="poloamarillo" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="85" id="polonaranja" value="85">
				<label for="polonaranja" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="86" id="polonegro" value="86">
				<label for="polonegro" id= "negro">Negro</label>
				
				<input type="checkbox" name="87" id="polomarron" value="87">
				<label for="polomarron" id= "marron">Marron</label>
				
				<input type="checkbox" name="88" id="poloazulmarino" value="88">
				<label for="poloazulmarino" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="89" id="poloverde" value="89">
				<label for="poloverde" id ="verde">Verde</label>
				
				<input type="checkbox" name="90" id="polorojo" value="90">
				<label for="polorojo" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="91" id="polomorado" value="91">
				<label for="polomorado" id ="morado">Morado</label>
				
			</div>
			</div>
			
			
				<div class="checkbox4">
			<div class="checkbox" id ="bloque" >
				<h2>Jogger <img src="images/Prendas/Abajo/Vestir/Blanco.png" align="left" id="jersey"> </h2>
				
				<br><br>
				<input type="checkbox" name="92" id="jerseyblanco" value="92">
				<label for="jerseyblanco" id="blanco">Blanco</label>
		
				<input type="checkbox" name="93" id="jerseybeige" value="93">
				<label for="jerseybeige" id= "beige">Beige</label>
				
				<input type="checkbox" name="94" id="jerseygris" value="94">
				<label for="jerseygris" id="gris">Gris</label>
				
				<input type="checkbox" name="95" id="jerseyazulcielo" value="95">
				<label for="jerseyazulcielo" id= "AzulCielo">Cielo</label>
				
				<input type="checkbox" name="96" id="jerseyrosa" value="96">
				<label for="jerseyrosa" id= "rosa">Rosa</label>
				
				<input type="checkbox" name="97" id="jerseyamarillo" value="97">
				<label for="jerseyamarillo" id= "amarillo">Amarillo</label>
				
				<input type="checkbox" name="98" id="jerseynaranja" value="98">
				<label for="jerseynaranja" id= "naranja">Naranja</label>
				
				<input type="checkbox" name="99" id="jerseynegro" value="99">
				<label for="jerseynegro" id= "negro">Negro</label>
				
				<input type="checkbox" name="100" id="jerseymarron" value="100">
				<label for="jerseymarron" id= "marron">Marron</label>
				
				<input type="checkbox" name="101" id="jerseyazulmarino" value="101">
				<label for="jerseyazulmarino" id ="azulmarino">Marino</label>
				
				<input type="checkbox" name="102" id="jerseyverde" value="102">
				<label for="jerseyverde" id ="verde">Verde</label>
				
				<input type="checkbox" name="103" id="jerseyrojo" value="103">
				<label for="jerseyrojo" id ="rojo">Rojo</label>
				
				<input type="checkbox" name="104" id="jerseymorado" value="104">
				<label for="jerseymorado" id ="morado">Morado</label>
		
			
			</div></div>
			<br>
			<br>
			<br>
			<input type="button" id="botonenviar2" value="Siguiente" >
			
		</form>
	</fieldset>
</body>
</html>