<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Producto</title>
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

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img src="img/farmacia.png" /></a>
							<ul class="dropdown-menu forAnimate" role="menu">
								<li><a href="#">Modificar</a></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img src="img/veterinaria.png" /> <span
								class="caret"></span></a>
							<ul class="dropdown-menu forAnimate" role="menu">

								<li><a href="#">Modificar</a></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img src="img/gasolinera.png" /> <span
								class="caret"></span></a>
							<ul class="dropdown-menu forAnimate" role="menu">

								<li><a href="#">Modificar</a></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img src="img/ortopedia.png" /> <span
								class="caret"></span></a>
							<ul class="dropdown-menu forAnimate" role="menu">

								<li><a href="#">Modificar</a></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img src="img/paraFarmacia.png" /> <span
								class="caret"></span></a>
							<ul class="dropdown-menu forAnimate" role="menu">

								<li><a href="#">Modificar</a></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img src="img/dentales.png" /><span
								class="caret"></span></a>
							<ul class="dropdown-menu forAnimate" role="menu">

								<li class="divider"></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img src="img/medico.png" /> <span
								class="caret"></span></a>
							<ul class="dropdown-menu forAnimate" role="menu">
								<li><a href="#">Modificar</a></li>

							</ul></li>


					</ul>
				</div>
			</div>
			</nav>
		</div>
		<div class="col2">
			<h2 class="title">Añadir Producto</h2>

			<form action="agregar" method="post">

				<p>
					<label>URL imagen:</label>
				</p>
				<p>
					<input type="text" name="url" class="form-control" />
				</p>
				<p>
					<label>Nombre: </label>
				</p>
				<p>
					<input type="text" name="descripcion_nombre" class="form-control" />
				</p>
				<p>
					<label>Referencia: </label>
				</p>
				<p>
					<input type="text" name="ref" class="form-control" />
				</p>
				<h2 class="subtitle">Características</h2>
				<p>
					<label>Texto: </label>
				</p>
				<p>
					<textarea class="form-control" name="descripcion" /></textarea>
				</p>
				<p>
					<label>Animaciones:</label>
				</p>
				<p>
					<textarea class="form-control" name="tresd" /></textarea>
				</p>
				<p>
					<label>Bluetooth:</label>
				</p>
				<p>
					<textarea class="form-control" name="bluetooth" /></textarea>
				</p>
				<p>
					<label>Fecha:</label>
				</p>
				<p>
					<textarea class="form-control" name="fecha" /></textarea>
				</p>
				<p>
					<label>Caras:</label>
				</p>
				<p>
					<input type="text" name="cruz" class="form-control" />
				</p>
				<p>
					<label>Horario: </label>
				</p>
				<p>
					<input type="text" name="horario" class="form-control" />
				</p>
				<p>
					<label>Brillo: </label>
				</p>
				<p>
					<input type="text" name="brillo" class="form-control" />
				</p>
				<p>
					<label>Color:</label>
				</p>
				<p>
					<input type="text" name="disponibilidad" class="form-control" />
				</p>
				<p>
					<label>Voltaje:</label>
				</p>
				<p>
					<input type="text" name="voltaje" class="form-control" />
				</p>
				<p>
					<label>Consumo:</label>
				</p>
				<p>
					<input type="text" name="consumo" class="form-control" />
				</p>
				<p>
					<label>Temperatura de almacenamiento: </label>
				</p>
				<p>
					<input type="text" name="almacenamiento" class="form-control" />
				</p>
				<p>
					<label>Temperatura de trabajo: </label>
				</p>
				<p>
					<input type="text" name="trabajo" class="form-control" />
				</p>
				<p>
					<label>Píxeles: </label>
				</p>
				<p>
					<input type="text" name="pixeles" class="form-control" />
				</p>
				<p>
					<label>Alimentación: </label>
				</p>
				<p>
					<input type="text" name="fuente" class="form-control" />
				</p>
				<p>
					<label>Sistema de control: </label>
				</p>
				<p>
					<input type="text" name="control" class="form-control" />
				</p>
				<p>
					<label>Tipografía: </label>
				</p>
				<p>
					<input type="text" name="tipografia" class="form-control" />
				</p>
				<p>
					<label>CPU: </label>
				</p>
				<p>
					<input type="text" name="cpu" class="form-control" />
				</p>
				<p>
					<label>Animaciones: </label>
				</p>
				<p>
					<input type="text" name="animacion" class="form-control" />
				</p>
				<p>
					<label>Número de leds: </label>
				</p>
				<p>
					<input type="text" name="cantidad" class="form-control" />
				</p>
				<p>
					<label>Ancho: </label>
				</p>
				<p>
					<input type="text" name="ancho" class="form-control" />
				</p>
				<p>
					<label>Alto: </label>
				</p>
				<p>
					<input type="text" name="alto" class="form-control" />
				</p>
				<p>
					<label>Fondo: </label>
				</p>
				<p>
					<input type="text" name="fondo" class="form-control" />
				</p>
				<p>
					<label>Categoría</label> <select name="categoria"
						class="form-control">
						<option value="1">Cruces de farmacia</option>
						<option value="2">Clínicas veterinarias</option>
						<option value="3">Preciarios gasolineras</option>
						<option value="4">Clínicas ortopedias</option>
						<option value="5">Cruces de parafarmacia</option>
						<option value="6">Clínicas dentales</option>
						<option value="7">Centro médico</option>
					</select>
				<p>
					<input type="submit"  class="bt btn btn-primary" value="Añadir" />
					<a href="cancelar" class="bt btn btn-primary " role="button">Cancelar</a>
				</p>
			</form>
			
		</div>

	</div>
</body>
</html>