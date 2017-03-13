<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eliminar categoría</title>
<%@include file="cabecera.jsp"%>
</head>
<body>
	<div class="wrapper">
		<div class="col1">
			<%@include file="menu.jsp"%>
		</div>

		<div class="col2 padding">
			<div class="section">
				<div class="container">
					<div class="row">
						<div class="col-md-10 ">
							<h2 class="title">Eliminar Categoría</h2>
							<h4>Indica la categoría a eliminar</h4>

							<form action="buscacategoria" method="post">
							<div class="table-responsive">
								<table class="table">
									<tr>
										<th  colspan="2"></th>
									</tr>
									<tr>
										<td ><p>Categoría</p></td>
										<td ><select name="categoria">
												<c:forEach items="${lista}" var="categoria">
													<option value="${categoria.getId()}">${categoria.getNombre()}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<td ><input type="text" name="page"
											value="elimina" hidden="hidden" /></td>

									</tr>
								
									<tr>
										<td  colspan="2"><p class="error">${mensaje}</p></td>

									</tr>
									<tr>
										<td ><input type="submit"
											class="btn btn-primary" value="Buscar" /></td>

									</tr>

								</table>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<div class="section margin">
				<div class="container">
					<div class="row">
						<div class="col-md-6 form Top ">


							<form action="eliminarC" method="post">
							<div class="table-responsive">
								<table class="table">
								
									<tr>
										<td ><p>Id Categoría:</p></td>
										<td ><input type="text" name="id"
											value="${seleccion.getId()}" readonly></td>
									</tr>
									<tr>
										<td><p>Nombre:</p></td>
										<td><input type="text" name="nombre"
											value="${seleccion.getNombre()}" readonly /></td>
									</tr>
									
									<tr>
										<td  colspan="2"><input type="submit"
											class="bt btn btn-primary" value="Eliminar" /></td>
									</tr>
									<tr>
										<td colspan="2"><a href="cancelar"
											class="bt btn btn-default " role="button">Cancelar</a></td>
									</tr>
								</table>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




</body>
</html>