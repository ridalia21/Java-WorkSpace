<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vista 1</title>
</head>
<body>
	<%
		String saludo = (String) request.getAttribute("entradaAdmin");
		if (saludo != null) {
			%>
				<h2><%=saludo %></h2>
			<% 
		}
	%>
	<p><a href="Index.jsp">Volver al Index</a></p>
</body>
</html>