<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>A�adir Categor�a</title>
<%@include file="cabecera.jsp"%>
</head>
<body>

<form action="agregarC" method="post">
	<p>Nombre categor�a: <input type="text"  name="nombreC" required="required"/></p>
	<p>URL imagen: <input type="text"  name="imagenC" /></p>
	<p>
		<input type="submit"  class="bt btn btn-primary" value="A�adir" />
		<a href="cancelar" class="bt btn btn-primary " role="button">Cancelar</a>
	</p>
</form>

</body>
</html>