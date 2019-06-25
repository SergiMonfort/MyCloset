<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
  <meta name="viewport"
     content="width=device-width, initial-scale=1, user-scalable=yes">
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" />

	<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		
<script type="text/javascript">
function cargarColores(){
	$.ajax({
		url: '${pageContext.request.contextPath}/prendasPorTipo?idTipoPrenda='+$("#selListaPrendas").val(),
		success: function(data){
			$("#agregarPrenda").show();
			console.log(data);
			$('#selColor').html("");
			$.each(data, function (i, item) {
			    $('#selColor').append($('<option>', { 
			        value: item.idPrenda,
			        text : item.color.nombreColor 
			    }));
			});
		}
	});
}

function agregarPrenda() {
	$.ajax({
		url: '${pageContext.request.contextPath}/agregarPrenda',
		method: 'POST',
		data: { 
	        'idUsuario': ${usuario.idUsuario}, 
	        'idPrenda': $("#selColor").val()
	      },
		success: function(data){
			console.log(data);
			alert(data); 
			cargarArmario();
		}
	});
	
}
function eliminarArmario(idArmario){
	console.log(idArmario);
	$.ajax({
		url: '${pageContext.request.contextPath}/eliminarPrenda?idArmario='+idArmario,
		method: 'DELETE',
		success: function(data){
			console.log(data);
			alert(data);
			cargarArmario();
		}
	});
}

function cargarArmario(){
	$.ajax({
		url: '${pageContext.request.contextPath}/armarioPorUsuario?idUsuario=${usuario.idUsuario}',
		method: 'GET',
		success: function(data){
			console.log(data);
			$('#tbodyPrendas').html("");
			var prendas = '';
			/*
			$.each(data, function (i, item) {
				prendas += '<tr><td>'+item.prenda.tipoPrenda.descripcion+'</td><td>'
				+item.prenda.color.nombreColor+'</td>'+
				
				'<td><button type="button" class="btn btn-danger">Eliminar</button></td></tr>'
			});
			*/
			for(i = 0; i < data.length ; i++){
				prendas = prendas + '<tr><td>'+data[i].prenda.tipoPrenda.descripcion+'</td><td>'
				+data[i].prenda.color.nombreColor+'</td>'+
				'<td><button type="button" onclick="eliminarArmario('+data[i].idArmario+')" class="btn btn-danger">X</button></td></tr>';
			}
			$('#tbodyPrendas').html(prendas);
		}
	});
}
$(function (){
	// se ejecuta al cargar la página web
	$("#agregarPrenda").hide();
	console.log("usuario: ${usuario.idUsuario}");
	cargarArmario();
	cargarColores();
});
</script>
</head>
<body>

<jsp:include page="/WEB-INF/jsp/include/navbar.jsp"></jsp:include>
	<div class="jumbotron">
	Mi Armario
	<table class="table">
	<thead>
	<tr>
      <th scope="col">Prenda</th>
      <th scope="col">Color</th>
      <th scope="col">Borrar</th>
	</tr>
	</thead>
	<tbody id="tbodyPrendas">
	</tbody>
	</table>
	</div>
<div class="container">

	<div class="row">
		<select name="listaPrendas" id="selListaPrendas" onchange="cargarColores()" >
		<c:forEach items="${listaPrendas}" var="prenda">
			<option value="${prenda.idTipo}">${prenda.descripcion}</option>
		</c:forEach>
		</select>
	</div>
	<div class="row" id="agregarPrenda" >
		<select name="color" id="selColor" >
		</select>
		<button type="button" onclick="agregarPrenda()">Agregar Prenda</button>
	</div>
</div>

<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
</body>
</html>