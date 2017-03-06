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
<%@include file="menu.jsp" %>
</div>

<div class="col2 padding" >
<div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-10 " >
           <h2 class="title">Eliminar Producto</h2> 

<h3>Indica la categoria y la referencia del producto</h3>
<form action="borrar" method="post">
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
  <p><input type="submit"  class=" btn btn-primary" value="Enviar" role="button"/></p>
  
   <div class="section margin">
              <div class="container">
                <div class="row">
                  <div class="col-md-6 form Top ">


  <p>id del producto: <input type="text" name="id" value="${seleccion.getId()}" readonly></p>
  <p>Nombre: <input type="text" name="descripcion_nombre" value="${seleccion.getDescripcion_nombre()}" readonly/></p>
  <p><input type="submit" class="bt btn btn-primary" role="button"value="Borrar" /></p>
   <p><a href="cancelar" class="bt btn btn-default " role="button">Cancelar</a></p></p>
</form>
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