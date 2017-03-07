<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html >

<head>
<title>Gestión Catálogo</title>
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
				<a href="altaCategoria" class="bt btn btn-danger" role="button">Añadir Categoría</a>
					<a href="modificaCategoria" class="bt btn btn-danger" role="button">Modificar Categoría</a>
					<a href="eliminaCategoria" class="bt btn btn-danger" role="button">Eliminar Categoría</a>
					<a href="altaProducto" class="bt btn btn-default" role="button">Añadir Producto</a> 
					<a href="modificaP" class="bt btn btn-default" role="button">Modificar Producto</a> 
					<a href="eliminaProducto" class="bt btn btn-default" role="button">Eliminar Producto</a>
					
					<p>${mensaje}</p>
				</h1>
			</div>
		</div>
	</div>
</body>
</html>
