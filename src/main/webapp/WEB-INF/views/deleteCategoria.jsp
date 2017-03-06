<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eliminar categoría</title>
</head>
<body>

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



</body>
</html>