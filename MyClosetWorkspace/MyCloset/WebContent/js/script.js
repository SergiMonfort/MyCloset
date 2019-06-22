function combinar() { //FUNCIÓN INUTILIZADA: IGNORAR
	var casual = document.getElementsByName('casual');

	var mensaje = ""

	for (var i=0; i<casual.length; i++) {
		if (casual[i].checked === true) {
		mensaje =  mensaje + "\n" + casual[i].value + " "}
	}


  }


function pruebaselec() {  // FUNCIÓN DE PRUEBA
    var prueba = document.getElementById("checkbox1").value; 
    document.getElementById("resultados").innerHTML = prueba;
    
    //Debería recuperar el valor del checkbox1 (camiseta blanca) en miarmario.jsp, pero nada
} 