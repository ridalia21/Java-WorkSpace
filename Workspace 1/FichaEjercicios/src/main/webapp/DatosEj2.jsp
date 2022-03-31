<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DatosEj2</title>
</head>
<body>

	<%
	String nombre = request.getParameter("nombre");
	%>
	<p>Hola <%=nombre %></p>
	
	<%-- response.sendRedirect --%>
	
</body>
</html>