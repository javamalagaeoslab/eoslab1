
<html>
<head>
<title>Página del Administrador</title>
<%@include file="cabecera.jsp"%>

</head>
<body>
	<div class="wrapper">
		<div class="col1">
			<nav class="navbar navbar-default sidebar" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-sidebar-navbar-collapse-1">

							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-sidebar-navbar-collapse-1">
						<ul class="nav navbar-nav">

							<li class="dropdown"><a href="modificaProducto" class="dropdown-toggle"
								data-toggle="dropdown"><img src="resources/farmacia.png" width="60%"/></a>
								<ul class="dropdown-menu forAnimate" role="menu">

									<li><a href="#">Modificar</a></li>

								</ul></li>
							<li class="dropdown"><a href="modificaProducto" class="dropdown-toggle"
								data-toggle="dropdown"><img
									src="resources/veterinaria.png"  width="60%"/> <span class="caret"></span></a>
								<ul class="dropdown-menu forAnimate" role="menu">

									<li><a href="#">Modificar</a></li>

								</ul></li>
							<li class="dropdown"><a href="modificaProducto" class="dropdown-toggle"
								data-toggle="dropdown"><img src="resources/gasolinera.png"   width="60%"/> <span
									class="caret"></span></a>
								<ul class="dropdown-menu forAnimate" role="menu">

									<li><a href="#">Modificar</a></li>

								</ul></li>
							<li class="dropdown"><a href="modificaProducto" class="dropdown-toggle"
								data-toggle="dropdown"><img src="resources/ortopedia.png"   width="60%"/> <span
									class="caret"></span></a>
								<ul class="dropdown-menu forAnimate" role="menu">

									<li><a href="#">Modificar</a></li>

								</ul></li>
							<li class="dropdown"><a href="modificaProducto" class="dropdown-toggle"
								data-toggle="dropdown"><img src="resources/paraFarmacia.png"   width="60%"/> <span
									class="caret"></span></a>
								<ul class="dropdown-menu forAnimate" role="menu">

									<li><a href="#">Modificar</a></li>

								</ul></li>
							<li class="dropdown"><a href="modificaProducto" class="dropdown-toggle"
								data-toggle="dropdown"><img src="resources/dentales.png"  width="60%"/><span
									class="caret"></span></a>
								<ul class="dropdown-menu forAnimate" role="menu">

									<li class="divider"></li>

								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><img src="resources/medico.png"  width="60%"/> <span
									class="caret"></span></a>
								<ul class="dropdown-menu forAnimate" role="menu">
									<li><a href="modificaProducto">Modificar</a></li>

								</ul></li>


						</ul>
					</div>
				</div>
			</nav>
	</div>
		<div class="col2" id="home">

			<div class="navbar_top">
				<h1>
					<a href="altaProducto" class="btn btn-primary" role="button">Añadir Producto</a> 
					<a href="modificaProducto" class="btn btn-primary" role="button">Modificar Producto</a> 
					<a href="eliminaProducto" class="btn btn-primary" role="button">Eliminar Producto</a>
					<a href="altaCategoria" class="btn btn-primary" role="button">Añadir Categoría</a>
					<a href="JSON" class="btn btn-primary" role="button">Dame JSON</a>
					<p>${mensaje}</p>
				</h1>
			</div>
		</div>
	</div>

	
</body>
</html>
