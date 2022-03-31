<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vista 2</title>
</head>
<body>
	<%
		String saludo = (String) request.getAttribute("entradaNormal");
		if (saludo != null) {
			%>
				<h2><%=saludo %></h2>
			<% 
		}
	%>
	<p><a href="Index.jsp">Voler al Index</a></p>
</body>
</html>