<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar una categor�a</title>
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
							<h2 class="title">Modificar Categor�a</h2>
							<h4>Indica el nombre de la categor�a ha modificar</h4>

							<form action="buscacategoria" method="post">

								<table class="tg">
									<tr>
										<th class="tg-031e" colspan="2"></th>
									</tr>
									<tr>
										<td class="tg-yw4l"><p>Categor�a</p></td>
										<td class="tg-yw4l"><select name="categoria">
												<c:forEach items="${lista}" var="categoria">
													<option value="${categoria.getId()}">${categoria.getNombre()}</option>
												</c:forEach>
										</select></td>

									</tr>
									<tr>
										<td class="tg-yw4l" colspan="2"><input type="text"
											name="page" value="actualiza" hidden="hidden" /></td>

									</tr>
									<tr>
										<td class="tg-yw4l" colspan="2"><p class="error">${mensaje}</p></td>

									</tr>
									<tr>
										<td class="tg-yw4l" colspan="2"><input type="submit"
											class="btn btn-primary" value="Buscar" /></td>
									</tr>

								</table>


							</form>
							<div class="section margin">
								<div class="container">
									<div class="row">
										<div class="col-md-6 form Top ">

											<form action="actualizarC" method="post">
												<table class="tg">
													<tr>
														<th class="tg-031e" colspan="2"></th>
													</tr>
													<tr>
														<td class="tg-yw4l"><p>Id Categor�a:</p></td>
														<td class="tg-yw4l"><input type="text" name="id"
															value="${seleccion.getId()}" readonly></td>
													</tr>
													<tr>
														<td class="tg-yw4l"><p>Nombre:</p></td>
														<td class="tg-yw4l"><input type="text" name="nombre"
															value="${seleccion.getNombre()}" /></td>
													</tr>
													<tr>
														<td class="tg-yw4l"><p>URL imagen:</p></td>
														<td class="tg-yw4l"><input type="text" name="imagen"
															value="${seleccion.getImagen()}" /></td>
													</tr>
													<tr>
														<td class="tg-yw4l"></td>
														<td class="tg-yw4l"></td>
													</tr>
													<tr>
														<td class="tg-yw4l" colspan="2"><p class="error">${mensaje}</p></td>

													</tr>
													<tr>
														<td class="tg-yw4l" colspan="2"><input type="submit"
															class="bt btn btn-primary" value="Modificar" /></td>
													</tr>
													<tr>
														<td class="tg-yw4l" colspan="2"><a href="cancelar"
															class="bt btn btn-default " role="button">Cancelar</a>
														</p></td>
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
</body>
</html>