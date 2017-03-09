<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Añadir Producto</title>
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
           <h2 class="title">Añadir Producto</h2>
          <form action="agregarProducto" method="post">

				<p class="error">
					${mensaje}
				</p>
				<p>
					Categoría <select name="categoria"
						class="form-control">
						<c:forEach items="${lista}" var="categoria">
							<option value="${categoria.getId()}">${categoria.getNombre()}</option>
						</c:forEach>
					</select>
				</p>
				<p>
					URL imagen:<input type="text" name="url" class="form-control" />
				</p>
				
				<p>
					Nombre:<input type="text" name="descripcion_nombre" class="form-control"  required="required"/>
				</p>
				
				<p>
					Referencia:<input type="text" name="ref" class="form-control" required="required"/>
				</p>
          
          
          
            <div class="section margin">
              <div class="container">
                <div class="row">
                  <div class="col-md-3 form Top ">
                  <h2 class="subtitle">Características</h2>
				<p>
					
				</p>
				<p>
					Texto:<textarea class="form-control" name="descripcion" /></textarea>
				</p>
				<p>
					
				</p>
				<p>
					Animaciones:<textarea class="form-control" name="tresd" /></textarea>
				</p>
			
				<p>
					Bluetooth:<textarea class="form-control" name="bluetooth" /></textarea>
				</p>
			
				<p>
				Fecha:<textarea class="form-control" name="fecha" /></textarea>
				</p>
                  
                  
                  
                  </div>
                  <div class="col-md-3 form Top Left" >
                  <p>
					Caras:<input type="text" name="cruz" class="form-control" />
				</p>
				
				<p>
					Horario:<input type="text" name="horario" class="form-control" />
				</p>
				
				<p>
					Brillo:<input type="text" name="brillo" class="form-control" />
				</p>
				
				<p>
					Color:<input type="text" name="disponibilidad" class="form-control" />
				</p>
				<p>
					Voltaje:<input type="text" name="voltaje" class="form-control" />
				</p>
				
				<p>
					Consumo:<input type="text" name="consumo" class="form-control" />
				</p>
				  
                  
                  
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 form LL" >
          <p>
          	Temperatura de almacenamiento:<input type="text" name="almacenamiento" class="form-control" />
				</p>
			
				<p>
					Temperatura de trabajo:<input type="text" name="trabajo" class="form-control" />
				</p>
          
				<p>
					Píxeles:<input type="text" name="pixeles" class="form-control" />
				</p>
			
				<p>
					Alimentación:<input type="text" name="fuente" class="form-control" />
				</p>
			
				<p>
					Sistema de control:<input type="text" name="control" class="form-control" />
				</p>
			
				<p>
					Tipografía:<input type="text" name="tipografia" class="form-control" />
				</p>
				
				<p>
					CPU:<input type="text" name="cpu" class="form-control" />
				</p>
			
				<p>
					Animaciones:<input type="text" name="animacion" class="form-control" />
				</p>
			
				<p>
					Número de leds:<input type="text" name="cantidad" class="form-control" />
				</p>
			
				<p>
					Ancho:<input type="text" name="ancho" class="form-control" />
				</p>
			
				<p>
					Alto:<input type="text" name="alto" class="form-control" />
				</p>
			
				<p>
					Fondo:<input type="text" name="fondo" class="form-control" />
				</p>
				
          
          
          
          </div>
        </div>
      </div>
    </div>
    
    
    
    
			
				<p>
					<input type="submit" class="bt btn btn-primary" value="Añadir" />
				</p>
				<p>
					 <a href="cancelar" class="bt btn btn-default " role="button">Cancelar</a>
				</p>
			</form>







		</div>

	</div>
</body>
</html>