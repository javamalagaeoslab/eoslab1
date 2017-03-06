
<html>
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
					<a href="altaProducto" class="btn btn-primary" role="button">A�adir Producto</a> 
					<a href="modificaProducto" class="btn btn-primary" role="button">Modificar Producto</a> 
					<a href="eliminaProducto" class="btn btn-primary" role="button">Eliminar Producto</a>
					<a href="altaCategoria" class="btn btn-primary" role="button">A�adir Categor�a</a>
					<a href="modificaCategoria" class="btn btn-primary" role="button">Modificar Categor�a</a>
					<a href="eliminaCategoria" class="btn btn-primary" role="button">Eliminar Categor�a</a>
					<p>${mensaje}</p>
				</h1>
			</div>
		</div>
	</div>
</body>
</html>
