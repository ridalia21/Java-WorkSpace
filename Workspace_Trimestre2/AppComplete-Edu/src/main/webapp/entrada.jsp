<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="controlador.*, modelo.*, utilidades.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Entrada</title>
</head>
<body>
	<h1>Bienvenido a nuestra aplicación</h1>
	<%
	HttpSession sesion = (HttpSession) request.getSession();
	Usuario u = null;
	if (sesion.getAttribute("usuario") != null) {
		u = (Usuario) sesion.getAttribute("usuario");
		out.print("<p> Tu eres: " + u.getLogin() + "</p>");
		out.print("<p> Del Tipo: " + u.getTipo() + "</p>");
	}
	if (u.getTipo().equals("A")) {
		out.print("<p><a href=\"verTusNotas\">ver tus notas </a></p>");
	} else {
		out.print("<p><a href=\"verNotas\">ver Notas alumnos </a></p>");
	}
	%>
	<p><a href="matar">MATAR SESIÓN</a></p>
	<p><a href="index.jsp">Volver al index</a></p>
</body>
</html>