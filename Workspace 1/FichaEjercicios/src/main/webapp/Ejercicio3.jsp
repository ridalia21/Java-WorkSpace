<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio3</title>
</head>
<body>

	<form action="DatosEj3.jsp" method="get">
		<p>Escriba una nota:</p>
		<input type="number" name="nota1" min="0" max="10" step="0.1" required>
		<p>Escriba la segunda nota:</p>
		<input type="number" name="nota2" min="0" max="10" step="0.1" required>
		<p>Escriba tercera nota:</p>
		<input type="number" name="nota3" min="0" max="10" step="0.1" required>
		<input type="submit" name="enviar" value="Enviar">
	</form>

</body>
</html>