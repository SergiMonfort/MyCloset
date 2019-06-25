
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="">

	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<a class="navbar-brand" href="#">MyCloset</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">MiArmario</a>
				</li>

				<li class="nav-item"><a class="nav-link disabled"
					href="/proximamente">Próximamente</a></li>
				<li class="nav-item"><a class="nav-link" href="/nosotros">Nosotros</a>

				</li>
			</ul>
			<c:if test="${usuario != null}">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="/logout"
						data-toggle="modal">Salir</a></li>
				</ul>
			</c:if>
		</div>
	</nav>
</div>