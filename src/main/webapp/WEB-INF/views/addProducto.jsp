<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar un producto</title>
</head>
<body>


<form action="agregar" method="post">

	<p>URL imagen: <input type="text" name="url" /></p>
	<p>Nombre: <input type="text" name="descripcion_nombre" /></p>
	<p>Referencia: <input type="text" name="ref" /></p>
	<p>Características</p>
	<p>Texto: <input type="text" name="descripcion" /></p>
	<p>Animaciones: <input type="text" name="tresd" /></p>
	<p>Bluetooth: <input type="text" name="bluetooth" /></p>
	<p>Fecha: <input type="text" name="fecha" /></p>
	<p>Caras: <input type="text" name="cruz" /></p>
	<p>Horario: <input type="text" name="horario" /></p>
	<p>Brillo: <input type="text" name="brillo" /></p>
	<p>Color: <input type="text" name="disponibilidad" /></p>
	<p>Voltaje: <input type="text" name="voltaje" /></p>
	<p>Consumo: <input type="text" name="consumo" /></p>
	<p>Temperatura de almacenamiento: <input type="text" name="almacenamiento" /></p>
	<p>Temperatura de trabajo: <input type="text" name="trabajo" /></p>
	<p>Píxeles: <input type="text" name="pixeles" /></p>
	<p>Alimentación: <input type="text" name="fuente" /></p>
	<p>Sistema de control: <input type="text" name="control" /></p>
	<p>Tipografía: <input type="text" name="tipografia" /></p>
	<p>CPU: <input type="text" name="cpu" /></p>
	<p>Animaciones: <input type="text" name="animacion" /></p>
	<p>Número de leds: <input type="text" name="cantidad" /></p>
	<p>Ancho: <input type="text" name="ancho" /></p>
	<p>Alto: <input type="text" name="alto" /></p>
	<p>Fondo: <input type="text" name="fondo" /></p>
	<p>Categoría
		<select name="categoria">
			<option value="1">Cruces de farmacia</option>
			<option value="2">Clínicas veterinarias</option>
			<option value="3">Preciarios gasolineras</option>
			<option value="4">Clínicas ortopedias</option>
			<option value="5">Cruces de parafarmacia</option>
			<option value="6">Clínicas dentales</option>
			<option value="7">Centro médico</option>
	</select>
	<p><input type="submit" value="Enviar" /></p>
</form>

</body>
</html>