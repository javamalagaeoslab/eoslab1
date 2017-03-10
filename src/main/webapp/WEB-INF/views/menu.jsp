<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar sidebar" role="navigation">
	<div class="container-fluid">

		<div class="collapse navbar-collapse"
			id="bs-sidebar-navbar-collapse-1">
			<ul class="nav navbar-nav">

				<c:forEach items="${sessionScope.lista}" var="categoria">
					<li class="dropdown"><a href="#" class="dropdown-toggle verde"
						data-toggle="dropdown"><img
							src="<c:url value='/resources/${categoria.imagen}'/>" width="50%"
							class="img-responsive" /></a> 
							<c:forEach items="${categoria.getListaProducto()}" var="producto">
							<ul class="dropdown-menu forAnimate" role="menu">
								
									<li>
									<span class="oscuro">
										<a class="btn btn-xs" href="modificaProducto/${categoria.id}/${producto.ref}/${categoria.nombre}"><span class="glyphicon glyphicon-trash"></span></a>
										<a class="btn btn-xs" href="eliminaProducto/${categoria.id}/${producto.ref}/${categoria.nombre}"><span class="glyphicon glyphicon-pencil"></span></a>
										<span>${producto.descripcion_nombre}</span>
									</span>
									</li>
								
							</ul>
							</c:forEach>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</nav>