<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar una categor�a</title>
</head>
<body>

<div class="col2" >
  <h2 class="title">Modificar Categor�a</h2>

<h3>Indica el nombre de la categor�a ha modificar</h3>
<form action="buscacategoria" method="post">
	<p>Categor�a
		<select name="categoria">
			<option value="1">Cruces de farmacia</option>
			<option value="2">Cl�nicas veterinarias</option>
			<option value="3">Preciarios gasolineras</option>
			<option value="4">Cl�nicas ortopedias</option>
			<option value="5">Cruces de parafarmacia</option>
			<option value="6">Cl�nicas dentales</option>
			<option value="7">Centro m�dico</option>
	</select>
	</p>
	<input type="text" name="page" value="actualiza" hidden="hidden"/>
	<p>${mensaje}</p>

	<p><input type="submit" value="Buscar" /></p>
</form>

<form action="actualizarC" method="post">
	<p>Id Categor�a: <input type="text" name="id" value="${seleccion.getId()}" readonly></p>
	<p><label>Nombre:</label></p><p><input type="text" name="nombre" value="${seleccion.getNombre()}"/></p>
	<p><label>URL imagen </label></p><p><input type="text" name="imagen" value="${seleccion.getImagen()}" /></p>
	<input type="submit"  class="bt btn btn-primary" value="Modificar" />
 	<a href="cancelar" class="bt btn btn-primary " role="button">Cancelar</a></p>
</form>



</body>
</html>