<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*,java.time.*,java.time.format.DateTimeFormatter" %>
<html>
<head>
<meta charset="UTF-8">
<title>Datos</title>
</head>
<body>
	<%
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellido");
		String NIF_DNI = request.getParameter("dni");
		LocalDate f1 = LocalDate.now();
		LocalTime f2 = LocalTime.now();
		LocalDateTime f3 = LocalDateTime.now();
		//Esto último es importante, es como establecer un formato 
		//personalizado para la fecha
		DateTimeFormatter formato = DateTimeFormatter.ofPattern("MM-dd-yyyy");
		out.print(f3.format(formato));
	%>
	<p><%=nombre.equals("Eduardo") %></p>
	<p><%=apellidos %></p>
	<p><%=NIF_DNI %></p>
	<p><%=f1 %></p>
	<p><%=f2 %></p>
	<p><%=f3 %></p>
	
	<p><%=request.getParameter("nombre") %></p>
<p><a href="Ejercicio1.jsp">Volver atrás</a></p>
</body>
</html>