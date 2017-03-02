<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar un producto</title>
</head>
<body>

<p>Indica la categoria y la referencia del producto</p>
<form action="buscaproducto" method="post">
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
	<p>Referencia: <input type="text" name="ref" /></p>
	<p><input type="submit" value="Enviar" /></p>

</form>

<form action="actualizar" method="post">
	<p>Ocultar la id del producto: <input type="text" name="id" value="${seleccion.getId()}"></p>
	<p>URL imagen: <input type="text" name="url" value="${seleccion.getUrl()}"/></p>
	<p>Nombre: <input type="text" name="descripcion_nombre" value="${seleccion.getDescripcion_nombre()}" /></p>
	<p>Referencia: <input type="text" name="ref" value="${seleccion.getRef()}"/></p>
	<p>Características</p>
	<p>Texto: <input type="text" name="descripcion" value="${seleccion.getDescripcion()}"/></p>
	<p>Animaciones: <input type="text" name="tresd" value="${seleccion.getTresd()}"/></p>
	<p>Bluetooth: <input type="text" name="bluetooth" value="${seleccion.getBluetooh()}" /></p>
	<p>Fecha: <input type="text" name="fecha" value="${seleccion.getFecha()}" /></p>
	<p>Caras: <input type="text" name="cruz" value="${seleccion.getCruz()}"/></p>
	<p>Horario: <input type="text" name="horario" value="${seleccion.getHorario()}" /></p>
	<p>Brillo: <input type="text" name="brillo" value="${seleccion.getBrillo()}"/></p>
	<p>Color: <input type="text" name="disponibilidad" value="${seleccion.getDisponibilidad()}" /></p>
	<p>Voltaje: <input type="text" name="voltaje" value="${seleccion.getVoltaje()}"/></p>
	<p>Consumo: <input type="text" name="consumo" value="${seleccion.getConsumo()}"/></p>
	<p>Temperatura de almacenamiento: <input type="text" name="almacenamiento" value="${seleccion.getAlmacenamiento()}" /></p>
	<p>Temperatura de trabajo: <input type="text" name="trabajo" value="${seleccion.getTrabajo()}"/></p>
	<p>Píxeles: <input type="text" name="pixeles" value="${seleccion.getPixeles()}" /></p>
	<p>Alimentación: <input type="text" name="fuente" value="${seleccion.getFuente()}"/></p>
	<p>Sistema de control: <input type="text" name="control" value="${seleccion.getControl()}"/></p>
	<p>Tipografía: <input type="text" name="tipografia" value="${seleccion.getTipografia()}" /></p>
	<p>CPU: <input type="text" name="cpu" value="${seleccion.getCpu()}" /></p>
	<p>Animaciones: <input type="text" name="animacion" value="${seleccion.getAnimacion()}" /></p>
	<p>Número de leds: <input type="text" name="cantidad" value="${seleccion.getCantidad()}" /></p>
	<p>Ancho: <input type="text" name="ancho" value="${seleccion.getAncho()}"/></p>
	<p>Alto: <input type="text" name="alto" value="${seleccion.getAlto()}" /></p>
	<p>Fondo: <input type="text" name="fondo" value="${seleccion.getFondo()}"/></p>
	<p>Categoría
		<select name="categoria" value="${seleccion.getId_categorias()}">
			<option value="1">Cruces de farmacia</option>
			<option value="2">Clínicas veterinarias</option>
			<option value="3">Preciarios gasolineras</option>
			<option value="4">Clínicas ortopedias</option>
			<option value="5">Cruces de parafarmacia</option>
			<option value="6">Clínicas dentales</option>
			<option value="7">Centro médico</option>
	</select>
	<p><input type="submit" value="Actualizar" /></p>
</form>

<form action="borrar" method="post">
	<p>Ocultar la id del producto: <input type="text" name="id" value="${seleccion.getId()}"></p>
	<p>Nombre ocultar: <input type="text" name="descripcion_nombre" value="${seleccion.getDescripcion_nombre()}" /></p>
	<p><input type="submit" value="Borrar" /></p>
</form>

</body>

</html>