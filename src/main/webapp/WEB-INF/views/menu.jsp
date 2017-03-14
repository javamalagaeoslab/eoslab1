<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar sidebar" >
	<div class="container-fluid">

		
			<ul class="nav navbar-nav">

				<c:forEach items="${sessionScope.lista}" var="categoria">
					<li class="dropdown"><a href="#" class="dropdown verde"
						data-toggle="dropdown"><img
							src="<c:url value='/resources/${categoria.imagen}'/>" width="30%"
							class="img-responsive" /></a> 
							<c:forEach items="${categoria.getListaProducto()}" var="producto">
							<ul class="dropdown-menu ">
								
									<li>
									<span class="oscuro">
									<span>${producto.descripcion_nombre}</span>
										<a class="btn btn-xs" href="modificaProducto/${categoria.id}/${producto.ref}/${categoria.nombre}/${producto.id}"><span class="glyphicon glyphicon-pencil"></span></a>
										<a class="btn btn-xs" href="eliminaProducto/${categoria.id}/${producto.ref}/${categoria.nombre}/${producto.id}/${producto.descripcion_nombre}"><span class="glyphicon glyphicon-trash"></span></a>
										
									</span>
									</li>
								
							</ul>
							</c:forEach>
					</li>
				</c:forEach>
			</ul>
		
	</div>
</nav>