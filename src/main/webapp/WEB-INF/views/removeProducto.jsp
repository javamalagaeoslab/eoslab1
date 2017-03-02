<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eliminar un producto</title>
</head>
<body>

<p>Indica la categoria y la referencia del producto</p>
<form action="buscaproducto" method="post">
	<p>Categoría
		<select name="categoria">
			<option value="1">Cruces de farmacia</option>
			<option value="2">Clínicas veterinarias</option>
			<option value="3">Preciarios gasolineras</option>
			<option value="4">Clínicas ortopedias</option>
			<option value="5">Cruces de parafarmacia</option>
			<option value="6">Clínicas dentales</option>
			<option value="7">Centro médico</option>
	</select>
	<p>Referencia: <input type="text" name="ref" /></p>
	<p>OCULTAR: <input type="text" name="page" value="elimina" />
	<p><input type="submit" value="Enviar" /></p>

</form>


<form action="borrar" method="post">
	<p>Ocultar la id del producto: <input type="text" name="id" value="${seleccion.getId()}"></p>
	<p>Nombre ocultar: <input type="text" name="descripcion_nombre" value="${seleccion.getDescripcion_nombre()}" /></p>
	<p><input type="submit" value="Borrar" /></p>
</form>

</body>
</html>