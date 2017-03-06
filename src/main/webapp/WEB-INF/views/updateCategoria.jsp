<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar una categoría</title>
<%@include file="cabecera.jsp"%>
</head>
<body>


	<div class="wrapper">
		<div class="col1">
			<%@include file="menu.jsp"%>
		</div>
		<div class="col2">

			<div class="section">
				<div class="container">
					<div class="row">
						<div class="col-md-6 ">
							<h2 class="title">Modificar Categoría</h2>
							<h3>Indica el nombre de la categoría ha modificar</h3>
							<form action="buscacategoria" method="post">
	<p>Categoría
		<select name="categoria">
			<c:forEach items="${lista}" var="categoria">
				<option value="${categoria.getId()}">${categoria.getNombre()}</option>
			</c:forEach>	
		</select>
	
	</p>
	<input type="text" name="page" value="actualiza" hidden="hidden"/>
	<p>${mensaje}</p>

	<p><input type="submit" value="Buscar" /></p>
</form>
</div>
 <div class="col-md-3 form LL" >
 <form action="actualizarC" method="post">
	<p>Id Categoría: <input type="text" name="id" value="${seleccion.getId()}" readonly></p>
	<p><label>Nombre:</label></p><p><input type="text" name="nombre" value="${seleccion.getNombre()}"/></p>
	<p><label>URL imagen </label></p><p><input type="text" name="imagen" value="${seleccion.getImagen()}" /></p>
	<input type="submit"  class="bt btn btn-primary" value="Modificar" />
 	<a href="cancelar" class="bt btn btn-primary " role="button">Cancelar</a></p>
</form>


							




										</div>
									</div>
								</div>
							</div>
						</div>
						
						</div>










</body>
</html>