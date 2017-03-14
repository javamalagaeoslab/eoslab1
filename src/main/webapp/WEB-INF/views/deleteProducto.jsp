<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eliminar producto</title>
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
							<h2 class="title">Eliminar Producto</h2>

							<h3>Indica la categoria y la referencia del producto</h3>
							<form action="buscaproducto" method="post">

								<table class="tg">
									<tr>
										<th class="tg-031e" colspan="2"></th>
									</tr>
									<tr>
										<td class="tg-yw4l"><p>Categoría</p></td>
										<td class="tg-yw4l"><select name="categoria">
										<option value="${categoria}">${nombre}</option>
												<c:forEach items="${lista}" var="categoria">
													<option value="${categoria.getId()}">${categoria.getNombre()}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<td class="tg-yw4l"><p>Referencia:</p></td>
										<td class="tg-yw4l"><input type="text" name="ref" value="${ref}"/></td>
									</tr>
									<tr>
										<td class="tg-yw4l"><input type="text" name="page"
											value="delete" hidden="hidden" /></td>

									</tr>
									<tr>
										<td class="tg-yw4l"></td>
										<td class="tg-yw4l"></td>
									</tr>
									<tr>
										<td class="tg-yw4l" colspan="2"><p class="error">${mensaje}</p></td>

									</tr>
									<tr>
										<td class="tg-yw4l"><input type="submit"
											class=" btn btn-primary" value="Buscar" role="button" /></td>

									</tr>

								</table>
							</form>



							<div class="section margin">
								<div class="container">
									<div class="row">
										<div class="col-md-6 form Top ">

											<form action="borrar" method="post">
												<table class="tg">
													<tr>
														<th class="tg-031e" colspan="2"></th>
													</tr>
													<tr>
														<td class="tg-yw4l"><p>id del producto:</p></td>
														<td class="tg-yw4l"><input type="text" name="id"
															value="${seleccion.id}" readonly></td>
													</tr>
													<tr>
														<td class="tg-yw4l"><p>Nombre:</p></td>
														<td class="tg-yw4l"><input type="text"
															name="descripcion_nombre"
															value="${seleccion.descripcion_nombre}" readonly /></td>
													</tr>
													<tr>
														<td class="tg-yw4l"></td>
														<td class="tg-yw4l"></td>
													</tr>

													<tr>
														<td class="tg-yw4l" colspan="2"><input type="submit"
															class="bt btn btn-primary" role="button" value="Eliminar" /></td>
													</tr>
													<tr>
														<td class="tg-yw4l" colspan="2"><a href="cancelar"
															class="bt btn btn-default " role="button">Cancelar</a></td>
													</tr>
												</table>


											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>

			</div>
		</div>
	</div>


</body>
</html>