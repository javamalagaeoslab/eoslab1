<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eliminar categoría</title>
<%@include file="cabecera.jsp"%>
</head>
<body>
	<div class="wrapper">
		<div class="col1">
			<%@include file="menu.jsp"%>
		</div>

		<div class="col2 padding">
			<div class="section">
				<div class="container">
					<div class="row">
						<div class="col-md-10 ">
							<h2 class="title">Eliminar Categoría</h2>
							<h3>Indica la categoría a eliminar</h3>

							<form action="buscacategoria" method="post">
								<p>
									Categoría <select name="categoria">
										<option value="1">Cruces de farmacia</option>
										<option value="2">Clínicas veterinarias</option>
										<option value="3">Preciarios gasolineras</option>
										<option value="4">Clínicas ortopedias</option>
										<option value="5">Cruces de parafarmacia</option>
										<option value="6">Clínicas dentales</option>
										<option value="7">Centro médico</option>
									</select>
								</p>
								<input type="text" name="page" value="elimina" hidden="hidden" />
								<p>${mensaje}</p>

								<p>
									<input type="submit" class="btn btn-primary" value="Buscar" />
								</p>
							</form>
							</div>
							</div>
							</div>
							</div>

							<div class="section margin">
								<div class="container">
									<div class="row">
										<div class="col-md-6 form Top ">


											<form action="eliminarC" method="post">
												<p>
													Id Categoría: <input type="text" name="id"
														value="${seleccion.getId()}" readonly>
												</p>
												<p>
													<label>Nombre:</label>
												</p>
												<p>
													<input type="text" name="nombre"
														value="${seleccion.getNombre()}" />
												</p>
												<p>
													<label>URL imagen </label>
												</p>
												<p>
													<input type="text" name="imagen"
														value="${seleccion.getImagen()}" />
												</p>
												<input type="submit" class="bt btn btn-primary"
													value="Eliminar" /> <a href="cancelar"
													class="bt btn btn-primary " role="button">Cancelar</a>
												</p>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>











<<<<<<< HEAD
=======
<div class="col2" >
  <h2 class="title">Eliminar Categoría</h2>

<h3>Indica la categoría ha eliminar</h3>
<form action="buscacategoria" method="post">
	<p>Categoría
		<select name="categoria">
			<c:forEach items="${lista}" var="categoria">
				<option value="${categoria.getId()}">${categoria.getNombre()}</option>
			</c:forEach>
	</select>
	</p>
	<input type="text" name="page" value="elimina" hidden="hidden"/>
	<p>${mensaje}</p>

	<p><input type="submit" value="Buscar" /></p>
</form>

<form action="eliminarC" method="post">
	<p>Id Categoría: <input type="text" name="id" value="${seleccion.getId()}" readonly></p>
	<p><label>Nombre:</label></p><p><input type="text" name="nombre" value="${seleccion.getNombre()}"/></p>
	<p><label>URL imagen </label></p><p><input type="text" name="imagen" value="${seleccion.getImagen()}" /></p>
	<input type="submit"  class="bt btn btn-primary" value="Eliminar" />
 	<a href="cancelar" class="bt btn btn-primary " role="button">Cancelar</a></p>
</form>
>>>>>>> bbe75659b61a21962e4ff29f9841079412cb0798



</body>
</html>