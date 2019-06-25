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
</head>
<body>



	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 100vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="/login" method="post">
							<div class="form-group">
								<input type="text" placeholder="Usuario" class="form-control"
									name="usuario">
							</div>
							<div class="form-group">
								<input type="password" placeholder="Contraseña"
									class="form-control" name="contrasenia">
							</div>
							<div class="text-center">
								<button type="submit" id="sendlogin" class="btn btn-primary">Entrar</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>