
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Añadir Categoria</title>
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
						<div class=" col-md-8 ">

							<h2 class="title">Añadir Categoria</h2>
							<form action="agregarC" method="post">

								<div class="table-responsive">
								<table class="table">

									<tr>
										<td ><p>Nombre categoría:</p></td>
										<td ><input type="text" name="nombreC"
											required="required" /></td>
									</tr>
									<tr>
										<td ><p>URL imagen:</p></td>
										<td><input type="text" name="imagenC" /></td>
									</tr>
									<tr>
										<td ></td>
										<td ></td>
									</tr>
									<tr>
										<td  colspan="2"><p class="error">
												${mensaje}</p></td>

									</tr>
									<tr>
										<td  colspan="2"><input type="submit"
											class="bt btn btn-primary" value="Añadir" /></td>
									</tr>
									<tr>
										<td  colspan="2"><a href="cancelar"
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