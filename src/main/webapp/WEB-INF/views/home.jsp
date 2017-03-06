
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
<<<<<<< HEAD
					<a href="altaProducto" class="btn btn-primary" role="button">Añadir Producto</a> 
					<a href="modificaProducto" class="btn btn-primary" role="button">Modificar Producto</a> 
					<a href="eliminaProducto" class="btn btn-primary" role="button">Eliminar Producto</a>
					<a href="altaCategoria" class="btn btn-primary" role="button">Añadir Categoría</a>
					<a href="modificaCategoria" class="btn btn-primary" role="button">Modificar Categoría</a>
					<a href="eliminaCategoria" class="btn btn-primary" role="button">Eliminar Categoría</a>
					<p>${mensaje}</p>
=======
					<a href="altaProducto" class="bt btn btn-default" role="button">Añadir
						Producto</a> <a href="modificaProducto" class="bt btn btn-default" role="button">Modificar
						Producto</a> <a href="eliminaProducto" class="bt btn btn-default" role="button">Eliminar
						Producto</a><a href="JSON" class="bt btn btn-default" role="button">Dame JSON
						Producto</a>
>>>>>>> 27141c7e4ab6330d662a2b97ac29032e27271d76
				</h1>

			</div>
		</div>

	</div>



	${mensaje}
</body>
</html>
