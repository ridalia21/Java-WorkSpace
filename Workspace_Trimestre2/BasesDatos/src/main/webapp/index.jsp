<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prueba 1</title>
</head>
<body>
	<%
	String error = (String) request.getAttribute("error");
	if (error != null) {
		out.print("<p>" + error + "</p>");
	}
	%>
	<h1>Formulario de busqueda de ciclos por nº de horas</h1>
	<form action="ResuelveBusqueda" method="get">
		<label>Pon horas del ciclo</label> 
		<input type="number" name="horas" min="1000" required> 
		<input type="submit" name="enviar" value="enviar">
	</form>
</body>
</html>