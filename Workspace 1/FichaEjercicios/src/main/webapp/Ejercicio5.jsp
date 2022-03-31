<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio5</title>
</head>
<body>

	<h2>Esto es un conversor de pesetas a euros</h2>
	<form action="DatosEj5.jsp">
		<p>Introduzca el importe:</p>
		<input type="number" name="pes" step="0.01" required> 
		<input type="submit" value="Calcular" name="env">
	</form>

</body>
</html>