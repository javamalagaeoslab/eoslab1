
<html>
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
					<a href="altaProducto" class="btn btn-primary" role="button">Añadir Producto</a> 
					<a href="modificaProducto" class="btn btn-primary" role="button">Modificar Producto</a> 
					<a href="eliminaProducto" class="btn btn-primary" role="button">Eliminar Producto</a>
					<a href="altaCategoria" class="btn btn-primary" role="button">Añadir Categoría</a>
					<a href="modificaCategoria" class="btn btn-primary" role="button">Modificar Categoría</a>
					<a href="eliminaCategoria" class="btn btn-primary" role="button">Eliminar Categoría</a>
					<p>${mensaje}</p>
				</h1>
			</div>
		</div>
	</div>
</body>
</html>
