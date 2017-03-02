<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Página del Administrador</title>
</head>
<body>
<h1>
	¿Qué quieres hacer?  
</h1>

<a href="altaProducto" ><p>Añadir producto</p></a>
<a href="modificaProducto" ><p>Modificar/Eliminar producto</p></a>
<a href="JSON" ><p>Dame JSON</p></a>

${mensaje}
${seleccion }
</body>
</html>
