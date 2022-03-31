<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pag1</title>
</head>
<body>
<%
	String mensaje = (String)request.getAttribute("mensaje");
	if (mensaje != null) {
		out.print(mensaje);
	}
%>
<h2>Listados</h2>
<ul>
<li><a href="ver?v=1">Ver alumnos viejos</a></li>
<li><a href="ver?v=2">Ver alumnos nuevos</a></li>
<li><a href="ver?v=3">Ver todos los alumnos</a></li>
<li><a href="agregar">Añadir viejo a nuevos (Ejecutar una sola vez)</a></li>
</ul>
</body>
</html>