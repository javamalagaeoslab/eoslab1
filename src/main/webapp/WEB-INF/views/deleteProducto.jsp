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
<form action="buscaproducto" method="post">
<p>${mensaje}</p>
  <p>Categor�a
    <select name="categoria">
    	<c:forEach items="${lista}" var="categoria">
			<option value="${categoria.getId()}">${categoria.getNombre()}</option>
		</c:forEach>
  </select>
  <p>Referencia: <input type="text" name="ref" /></p>
  	<input type="text" name="page" value="delete" hidden="hidden"/>
  <p><input type="submit"  class=" btn btn-primary" value="Enviar" role="button"/></p>
  
  </form>
  
   <div class="section margin">
              <div class="container">
                <div class="row">
                  <div class="col-md-6 form Top ">

<form action="borrar" method="post">
  <p>id del producto: <input type="text" name="id" value="${seleccion.getId()}" readonly></p>
  <p>Nombre: <input type="text" name="descripcion_nombre" value="${seleccion.getDescripcion_nombre()}" readonly/></p>
  <p><input type="submit" class="bt btn btn-primary" role="button"value="Borrar" /></p>
   <p><a href="cancelar" class="bt btn btn-default " role="button">Cancelar</a></p>
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