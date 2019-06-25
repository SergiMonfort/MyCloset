<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


<div class="card bg-light">
	<article class="card-body mx-auto" style="max-width: 400px;">
		<h4 class="card-title mt-3 text-center">Empecemos con tu registro</h4>
		<!-- 	<p> -->
		<!-- 		<a href="" class="btn btn-block btn-twitter"> <i class="fab fa-twitter"></i>   Login via Twitter</a> -->
		<!-- 		<a href="" class="btn btn-block btn-facebook"> <i class="fab fa-facebook-f"></i>   Login via facebook</a> -->
		<!-- 	</p> -->
		<p class="divider-text">
			<span class="bg-light"></span>
		</p>
		<form action="/registrar" method="post">
			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-user"></i>
					</span>
				</div>
				<input name="usuario" class="form-control" placeholder="Usuario"
					type="text">
			</div>
			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-name"></i>
					</span>
				</div>
				<input name="nombre" class="form-control" placeholder="Nombre"
					type="text">
			</div>
			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-lastnames"></i>
					</span>
				</div>
				<input name="apellidos" class="form-control" placeholder="Apellidos"
					type="text">
			</div>
			<!-- form-group// -->
			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-envelope"></i>
					</span>
				</div>
				<input name="email" class="form-control" placeholder="Email"
					type="email">
			</div>
			<!-- form-group// -->
			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-lock"></i>
					</span>
				</div>
				<input name="contrasenia" class="form-control"
					placeholder="Introduce tu contraseña" type="password">
			</div>
			<!-- form-group// -->
			<!-- 			<div class="form-group input-group"> -->
			<!-- 				<div class="input-group-prepend"> -->
			<!-- 					<span class="input-group-text"> <i class="fa fa-lock"></i> -->
			<!-- 					</span> -->
			<!-- 				</div> -->
			<!-- 				<input class="form-control" placeholder="Repite tu contraseña" -->
			<!-- 					type="password"> -->
			<!-- 			</div> -->
			<!-- form-group// -->
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block">
					Crear Cuenta</button>
			</div>
			<!-- form-group// -->
			<p class="text-center">
				¿Ya estás registrado? <a href="login"></a>
			</p>
		</form>
	</article>