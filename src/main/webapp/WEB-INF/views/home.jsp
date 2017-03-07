<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html >

<head>
<title>Gesti�n Cat�logo</title>
<%@include file="cabecera.jsp"%>

</head>
<body>

	<div class="wrapper">
		<div class="col1">
			<%@include file="menu.jsp" %>
		</div>
		<div class="col2 home" >

			<div class="navbar_top">
				<h1>
				<a href="altaCategoria" class="bt btn btn-danger" role="button">A�adir Categor�a</a>
					<a href="modificaCategoria" class="bt btn btn-danger" role="button">Modificar Categor�a</a>
					<a href="eliminaCategoria" class="bt btn btn-danger" role="button">Eliminar Categor�a</a>
					<a href="altaProducto" class="bt btn btn-default" role="button">A�adir Producto</a> 
					<a href="modificaP" class="bt btn btn-default" role="button">Modificar Producto</a> 
					<a href="eliminaProducto" class="bt btn btn-default" role="button">Eliminar Producto</a>
					
					<p>${mensaje}</p>
				</h1>
			</div>
		</div>
	</div>
</body>
</html>
