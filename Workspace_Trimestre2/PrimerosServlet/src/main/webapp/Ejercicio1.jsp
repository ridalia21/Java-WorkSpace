<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejercicio1</title>
</head>
<body>
	<h2>Ingresa tus datos:</h2>
	
<%
	String mensaje = (String) request.getAttribute("mensajePrueba");
	if (mensaje != null) {
		out.print("<p class=\"rojo\">" + mensaje + "</p>");
	}
%>
	<form action="controlAcceso" method="post">
		<table style="border: 1px solid black">
			<tr>
				<th>Nombre:</th>
				<td><input type="text" name="nombre" required="required"/> </td>
			</tr>
			<tr>
				<th>Apellido:</th>
				<td><input type="text" name="apellido" required="required"/> </td>
			</tr>
			<tr>
				<th>Promedio:</th>
				<td><input type="number" name="promedio" min="0" max="10" step="0.1"/> </td>
			</tr>
		</table>
		<input type="submit" name="enviar" value="Enviar"/>
		<input type="reset" name="borrar" value="Borrar"/>
	</form>
</body>
</html>