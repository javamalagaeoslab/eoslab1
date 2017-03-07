<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar sidebar" role="navigation">
	<div class="container-fluid">

		<div class="collapse navbar-collapse"
			id="bs-sidebar-navbar-collapse-1">
			<ul class="nav navbar-nav">

				<li class="dropdown">
					<c:forEach items="${sessionScope.lista}" var="categoria">
						<a href="#" class="dropdown-toggle azul" data-toggle="dropdown"><img
							src="<c:url value='/resources/${categoria.imagen}'/>"
							width="50%" class="img-responsive" /></a>
						<ul class="dropdown-menu forAnimate" role="menu">
							<li><a href="#">Modificar Productos</a></li>
						</ul>
					</c:forEach>
				</li>

			</ul>
		</div>
	</div>
</nav>