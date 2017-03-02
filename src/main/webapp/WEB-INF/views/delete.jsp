<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
  <p><input type="submit" value="Enviar" /></p>


  <p>id del producto: <input type="text" name="id" value="${seleccion.getId()}" readonly></p>
  <p>Nombre: <input type="text" name="descripcion_nombre" value="${seleccion.getDescripcion_nombre()}" readonly/></p>
  <p><input type="submit" value="Borrar" /></p>
</form>

</div>

</div>


</body>
</html>