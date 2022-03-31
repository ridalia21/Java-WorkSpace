<%@ page import="java.util.*, modelo.*"%>
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
		ArrayList<Prueba> l = (ArrayList<Prueba>) request.getAttribute("lista");
		if (l.size() == 0) {
			out.print("<p>Sin datos</p>");
		} else {
			for (Prueba p : l) {
				out.print("hola");
				out.print("<p>"+p+"</p>");
			}
		}
	%>
	<p><a href="formConsulta.jsp">Inicio</a></p>
</body>
</html>