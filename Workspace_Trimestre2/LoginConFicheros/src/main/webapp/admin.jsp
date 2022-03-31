<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Página de administración</title>
</head>
<body>
<%
	String login = (String)request.getAttribute("login");
%>
<h2>Bienvenido administrador</h2>
<p><%=login %></p>
<a href="cambiarClave.jsp?login=<%=login%>">Quieres cambiar tu clave?</a>
<p><a href="index1.jsp">Volver a logarse</a></p>
</body>
</html>