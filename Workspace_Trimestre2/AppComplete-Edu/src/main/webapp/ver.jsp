<%@page import="modelo.Usuario"%>
<%@page import="modelo.Universitario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Usuario u;
	HttpSession sesion = (HttpSession) request.getSession();
	if (sesion != null) {
		u = (Usuario) sesion.getAttribute("usuario");
		out.print("<p> Tu eres: " + u.getLogin() + "</p>");
		out.print("<p> Del Tipo: " + u.getTipo() + "</p>");
	}

	String mensaje = (String) request.getAttribute("error");
	if (mensaje != null) {
		out.print(mensaje);
	}

	Universitario uniNota = (Universitario) request.getAttribute("uniNota");
	if (uniNota != null) {
	%>
		<p><%=uniNota.toString() %></p>
	<% 
	}
	%>
	
	<p><a href="matar">MATAR SESIÓN</a></p>
	<p><a href="entrada.jsp">Volver a pagina entrada</a></p>
</body>
</html>