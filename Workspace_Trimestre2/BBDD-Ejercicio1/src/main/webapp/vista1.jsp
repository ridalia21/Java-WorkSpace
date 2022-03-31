<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, modelo.*,utilidades.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vista 1</title>
</head>
<body>
	<%
	ArrayList<Especialidad> lista = (ArrayList<Especialidad>) request.getAttribute("lista");
	if (lista.size() == 0)
		out.print("<h1> no hay coincidencias </h1>");
	else
		for (int i = 0; i < lista.size(); i++) {
	%>
	<p><%=lista.get(i)%></p>
	<%
	}
	%>
	<p>
		<a href="index.jsp">nueva busqueda</a>
	</p>
</body>
</html>