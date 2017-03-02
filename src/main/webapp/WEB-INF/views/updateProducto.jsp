<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar un producto</title>
<%@include file="cabecera.jsp"%>
</head>
<body>
<div class="wrapper">
<div class="col1">
<nav class="navbar navbar-default sidebar" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>      
    </div>
    <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
      <ul class="nav navbar-nav">
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/farmacia.png" /></a>
          <ul class="dropdown-menu forAnimate" role="menu">
            <li><a href="#">Modificar</a></li>
  
          </ul>
        </li>      
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/veterinaria.png" /> <span class="caret"></span></a>
          <ul class="dropdown-menu forAnimate" role="menu">
          
            <li><a href="#">Modificar</a></li>
     
          </ul>
        </li>       
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/gasolinera.png" /> <span class="caret"></span></a>
          <ul class="dropdown-menu forAnimate" role="menu">
        
            <li><a href="#">Modificar</a></li>
   
          </ul>
        </li>       
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/ortopedia.png" /> <span class="caret"></span></a>
          <ul class="dropdown-menu forAnimate" role="menu">
     
            <li><a href="#">Modificar</a></li>
           
          </ul>
        </li>   
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/paraFarmacia.png" /> <span class="caret"></span></a>
          <ul class="dropdown-menu forAnimate" role="menu">
           
            <li><a href="#">Modificar</a></li>
          
          </ul>
        </li> 
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/dentales.png" /><span class="caret"></span></a>
          <ul class="dropdown-menu forAnimate" role="menu">
            
            <li class="divider"></li>
            
          </ul>
        </li> 
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/medico.png" /> <span class="caret"></span></a>
          <ul class="dropdown-menu forAnimate" role="menu">
            <li><a href="#">Modificar</a></li>
            
          </ul>
        </li>     

       
      </ul>
    </div>
  </div>
</nav>
</div>
<div class="col2" >
  <h2 class="title">Modificar Producto</h2>

<h3>Indica la categoria y la referencia del producto</h3>
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
	<p>${mensaje}</p>
	<p><input type="submit" value="Enviar" /></p>

</form>

<form action="actualizar" method="post">
	<p>id del producto: <input type="text" name="id" value="${seleccion.getId()}" readonly></p>
	<p><label>URL imagen:</label></p><p><input type="text" name="url" value="${seleccion.getUrl()}"/></p>
	<p><label>Nombre: </label></p><p><input type="text" name="descripcion_nombre" value="${seleccion.getDescripcion_nombre()}" /></p>
	<p><label>Referencia: </label></p><p><input type="text" name="ref" value="${seleccion.getRef()}"/></p>
	<h2 class="subtitle">Características</h2>
	<p><label>Texto: </label></p><p><textarea  class="form-control" name="descripcion" value="${seleccion.getDescripcion()}"/></textarea></p>
  <p><label>Animaciones:</label></p><p> <textarea class="form-control" name="tresd" value="${seleccion.getTresd()}"/></textarea></p>
  <p><label>Bluetooth:</label></p><p> <textarea class="form-control" name="bluetooth" value="${seleccion.getBluetooh()}" /></textarea></p>
  <p><label>Fecha:</label></p><p> <textarea class="form-control" name="fecha" value="${seleccion.getFecha()}"/></textarea></p>
	
	<p><label>Caras:</label></p><p> <input type="text" name="cruz" value="${seleccion.getCruz()}"/></p>
	<p><label>Horario: </label></p><p><input type="text" name="horario" value="${seleccion.getHorario()}" /></p>
	<p><label>Brillo: </label></p><p><input type="text" name="brillo" value="${seleccion.getBrillo()}"/></p>
	<p><label>Color:</label></p><p> <input type="text" name="disponibilidad" value="${seleccion.getDisponibilidad()}" /></p>
	<p><label>Voltaje:</label></p><p><input type="text" name="voltaje" value="${seleccion.getVoltaje()}"/></p>
	<p><label>Consumo:</label></p><p> <input type="text" name="consumo" value="${seleccion.getConsumo()}"/></p>
	<p><label>Temperatura de almacenamiento: </label></p><p><input type="text" name="almacenamiento" value="${seleccion.getAlmacenamiento()}" /></p>
	<p><label>Temperatura de trabajo: </label></p><p><input type="text" name="trabajo" value="${seleccion.getTrabajo()}"/></p>
	<p><label>Píxeles: </label></p><p><input type="text" name="pixeles" value="${seleccion.getPixeles()}" /></p>
	<p><label>Alimentación: </label></p><p><input type="text" name="fuente" value="${seleccion.getFuente()}"/></p>
	<p><label>Sistema de control: </label></p><p><input type="text" name="control" value="${seleccion.getControl()}"/></p>
	<p><label>Tipografía: </label></p><p><input type="text" name="tipografia" value="${seleccion.getTipografia()}" /></p>
	<p><label>CPU: </label></p><p><input type="text" name="cpu" value="${seleccion.getCpu()}" /></p>
	<p><label>Animaciones: </label></p><p><input type="text" name="animacion" value="${seleccion.getAnimacion()}" /></p>
	<p><label>Número de leds: </label></p><p><input type="text" name="cantidad" value="${seleccion.getCantidad()}" /></p>
	<p><label>Ancho: </label></p><p><input type="text" name="ancho" value="${seleccion.getAncho()}"/></p>
	<p><label>Alto: </label></p><p><input type="text" name="alto" value="${seleccion.getAlto()}" /></p>
	<p><label>Fondo: </label></p><p><input type="text" name="fondo" value="${seleccion.getFondo()}"/></p>
	<p><label>Categoría</label>
		<select name="categoria" class="form-control" value="${seleccion.getId_categorias()}">
			<option value="1">Cruces de farmacia</option>
			<option value="2">Clínicas veterinarias</option>
			<option value="3">Preciarios gasolineras</option>
			<option value="4">Clínicas ortopedias</option>
			<option value="5">Cruces de parafarmacia</option>
			<option value="6">Clínicas dentales</option>
			<option value="7">Centro médico</option>
	</select>
	<p><a href="#" class="bt btn btn-primary " role="button">Actualizar Producto</a>
 <a href="#" class="bt btn btn-primary " role="button">Cancelar</a></p>
	
</form>








</div>

</div>


</body>

</html>