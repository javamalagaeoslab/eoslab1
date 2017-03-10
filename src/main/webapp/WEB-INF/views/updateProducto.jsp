<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar un producto</title>
<%@include file="cabecera.jsp"%>
</head>
<body>
<div class="wrapper">
		<div class="col1">
			<%@include file="menu.jsp" %>
		</div>
		<div class="col2">
		
		<div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 " >
           <h2 class="title">Modificar Producto</h2>
           <h3>Indica la categoria y la referencia del producto</h3>
           
           
          <form action="buscaproducto" method="post" >
          
	<p class="error">${mensaje}</p>
	<p>Categorías
		<select name="categoria" class="form-control" >
			<option value="${categoria}">${nombre}</option>
			<c:forEach items="${lista}" var="categoria">
			<option value="${categoria.getId()}">${categoria.getNombre()}</option>
			</c:forEach>
		</select>
	</p>
	<p>Referencia: <input type="text" name="ref" value="${ref}"/></p>
	<p><input type="text" name="page" value="actualiza" hidden="hidden" /></p>
	<p><input type="submit" class=" btn btn-primary" value="Enviar" role="button"/></p>

</form>
 <div class="section margin">
              <div class="container">
                <div class="row">
                  <div class="col-md-3 form Top ">

<form action="actualizar" method="post">
	<p>id del producto: <input type="text" name="id" value="${seleccion.getId()}" readonly></p>
	<p>URL imagen:</p><p><input type="text" name="url" value="${seleccion.getUrl()}"/></p>
	<p>Nombre: </p><p><input type="text" name="descripcion_nombre" value="${seleccion.getDescripcion_nombre()}" /></p>
	<p>Referencia: </p><p><input type="text" name="ref" value="${seleccion.getRef()}"/></p>
	<h2 class="subtitle">Características</h2>
	<p>Texto:</p><p><textarea  class="form-control" name="descripcion" >${seleccion.getDescripcion()}</textarea></p>
  <p>Animaciones:</p><p> <textarea class="form-control" name="tresd" >${seleccion.getTresd()}</textarea></p>
	 <p>Bluetooth:</p><p> <textarea class="form-control" name="bluetooth" >${seleccion.getBluetooth()}</textarea></p>
	
	 </div>
     <div class="col-md-3 form Top Left" >   
     
 
  <p>Fecha:</p><p> <textarea class="form-control" name="fecha">${seleccion.getFecha()}</textarea></p>  
	<p>Caras:</p><p> <input type="text" name="cruz" value="${seleccion.getCruz()}"/></p>
	<p>Horario: </p><p><input type="text" name="horario" value="${seleccion.getHorario()}" /></p>
	<p>Brillo: </p><p><input type="text" name="brillo" value="${seleccion.getBrillo()}"/></p>
	<p>Color:</p><p> <input type="text" name="disponibilidad" value="${seleccion.getDisponibilidad()}" /></p>
	<p>Voltaje:</p><p><input type="text" name="voltaje" value="${seleccion.getVoltaje()}"/></p>
	<p>Consumo:</p><p> <input type="text" name="consumo" value="${seleccion.getConsumo()}"/></p>
	<p>Temperatura de almacenamiento:</p><p><input type="text" name="almacenamiento" value="${seleccion.getAlmacenamiento()}" /></p>
	
	  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 form LL" >
          
	
	<p>Temperatura de trabajo: </p><p><input type="text" name="trabajo" value="${seleccion.getTrabajo()}"/></p>
	<p>Píxeles: </p><p><input type="text" name="pixeles" value="${seleccion.getPixeles()}" /></p>
	<p>Alimentación:</p><p><input type="text" name="fuente" value="${seleccion.getFuente()}"/></p>
	<p>Sistema de control: </p><p><input type="text" name="control" value="${seleccion.getControl()}"/></p>
	<p>Tipografía: </p><p><input type="text" name="tipografia" value="${seleccion.getTipografia()}" /></p>
	<p>CPU:</p><p><input type="text" name="cpu" value="${seleccion.getCpu()}" /></p>
	<p>Animaciones: </p><p><input type="text" name="animacion" value="${seleccion.getAnimacion()}" /></p>
	<p>Número de leds: </p><p><input type="text" name="cantidad" value="${seleccion.getCantidad()}" /></p>
	<p>Ancho: </p><p><input type="text" name="ancho" value="${seleccion.getAncho()}"/></p>
	<p>Alto: </p><p><input type="text" name="alto" value="${seleccion.getAlto()}" /></p>
	<p>Fondo:</p><p><input type="text" name="fondo" value="${seleccion.getFondo()}"/></p>
		<p>Categoría
		<select name="categoria" class="form-control" >
			<option value="${seleccion.getId_categorias()}"></option>
			<c:forEach items="${lista}" var="categoria">
			<option value="${categoria.getId()}">${categoria.getNombre()}</option>
			</c:forEach>
		</select>
	 </p>
         </div>
        </div>
      </div>
    </div>
    
	  <p><input type="submit"class="bt btn btn-primary"  value="Actualizar" role="button"/></p>
 <p><a href="cancelar" class="bt btn btn-default " role="button">Cancelar</a></p>
	
</form>








</div>

</div>


</body>

</html>