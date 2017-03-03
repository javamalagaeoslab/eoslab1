<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Categoría</title>
<%@include file="cabecera.jsp"%>
</head>
<body>

<form action="agregarC" method="post">
	<p>Nombre categoría: <input type="text"  name="nombreC" /></p>
	<p>URL imagen: <input type="text"  name="imagenC" /></p>
	<p>
		<input type="submit"  class="bt btn btn-primary" value="Añadir" />
		<a href="cancelar" class="bt btn btn-primary " role="button">Cancelar</a>
	</p>
</form>

</body>
</html>