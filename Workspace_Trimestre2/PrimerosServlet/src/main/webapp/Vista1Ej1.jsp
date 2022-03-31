<%@page import="modelo.Informacion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vista1</title>
</head>
<body>
<% 
Informacion inf1 = (Informacion) request.getAttribute("alumno");
%>
	<h2>Estos son tus datos:</h2>
	<form action="Ejercicio1.jsp" method="post">
	<table style="border: 1px solid black">
		<tr>
			<th>Nombre:</th>
			<!-- Los if no son totalmente necesarios porque la comparación ya se hace
			en el controlador -->
			<td><%if (inf1.getNombre() != null) out.print(inf1.getNombre()); %></td>
		</tr>
		<tr>
			<th>Apellido:</th>
			<td><%if (inf1.getApellido() != null) out.print(inf1.getApellido()); %></td>
		</tr>
		<tr>
			<th>Promedio:</th>
			<td><%=inf1.getPromedio() %></td>
		</tr>
		<%
		if (inf1.comparaAprobado()) {
			%>
			<tr>
				<th>Resultado:</th>
				<td>Aprobado!!</td>
			</tr>
			<% 
		}
		%>
	</table>
	<input type="submit" name="volver" value="Regresar" />
	</form>
</body>
</html>