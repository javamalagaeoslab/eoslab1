
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>A�adir Categoria</title>
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
							<h2 class="title">A�adir Categoria</h2>
							<form action="agregarC" method="post">
							<p>
								${mensaje}
							</p>
								<p>
									Nombre categor�a: <input type="text" name="nombreC"
										required="required" />
								</p>
								<p>
									URL imagen: <input type="text" name="imagenC" />
								</p>
								<p>
									<input type="submit" class="bt btn btn-primary" value="A�adir" />
									<a href="cancelar" class="bt btn btn-default " role="button">Cancelar</a>
								</p>
							</form>








						</div>
					</div>
				</div>
			</div>
		</div>

	</div>





</body>
</html>