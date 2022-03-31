<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controlador.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Primeros Servlet</title>
	<style type="text/css">
		.rojo {
		color: red;
		}
	</style>
</head>
<body>
<%
String mensaje = (String) request.getAttribute("mensaje");
if (mensaje != null) {
	out.print("<p class=\"rojo\">" + mensaje + "</p>");
}
%>
	<h1>Página de acceso</h1>
	<form action="controladorAcceso" method="post">
		<p>Usuario: <input type="text" name="login" /></p>
		<p>Contraseña: <input type="password" name="passw" /></p>
		<p><input type="submit" name="enviar" value="Enviar"/></p>
	</form>
</body>
</html>