<%@page import="utilidades.*"%>
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
		producto p = (producto) request.getAttribute("producto");
		superTarea superT = (superTarea) request.getAttribute("tareas");
		producto p2 = new producto(5,"tablet",220.0);
	%>
	<p><%=p %></p>
	<p><%=superT.ejecutar(p) %></p>
	<p><a href="index.jsp">Volver</a></p>
</body>
</html>