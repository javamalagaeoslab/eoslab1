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

			<div class="table-responsive">
			<table class="table">
  <tr>
    <th  colspan="2"><a href="altaCategoria" class="bt btn btn-danger" role="button">Añadir Categoría</a></th>
  </tr>
  <tr>
    <td  colspan="2"><a href="modificaCategoria" class="bt btn btn-danger" role="button">Modificar Categoría</a></td>
  
  </tr>
  <tr>
    <td  colspan="2"><a href="eliminaCategoria" class="bt btn btn-danger" role="button">Eliminar Categoría</a></td>

  </tr>
  <tr>
    <td  colspan="2"><a href="altaProducto" class="bt btn btn-default" role="button">Añadir Producto</a> </td>
  
  </tr>
  <tr>
    <td  colspan="2"><a href="modificaP" class="bt btn btn-default" role="button">Modificar Producto</a> </td>
  </tr>
  <tr>
    <td colspan="2"><a href="eliminaProducto" class="bt btn btn-default" role="button">Eliminar Producto</a></td>
  </tr>
  <tr>
    <td  colspan="2"></td>
  </tr>
  <tr>
    <td   colspan="2"><p class="exito">${mensaje}</p></td>
  </tr>
</table>
			
			</div>
		</div>
	</div>
</body>
</html>
