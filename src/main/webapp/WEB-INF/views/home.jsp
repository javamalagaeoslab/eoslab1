
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
					<a href="altaProducto" class="bt btn btn-default" role="button">Añadir
						Producto</a> <a href="modificaProducto" class="bt btn btn-default" role="button">Modificar
						Producto</a> <a href="eliminaProducto" class="bt btn btn-default" role="button">Eliminar
						Producto</a><a href="JSON" class="bt btn btn-default" role="button">Dame JSON
						Producto</a>
				</h1>

			</div>
		</div>

	</div>



	${mensaje}
</body>
</html>
