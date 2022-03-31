<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio1</title>
</head>
<body>

	<form action="DatosEj1.jsp" method="get">
		<p>Escriba su nombre:</p>
		<input type="text" name="nombre"  />
		<p>Escriba sus apellidos: </p>
		<input type="text" name="apellido"  />
		<p>Escriba su NIF/NIE:</p>
		<input type="text" name="dni" maxlength="9"  />
		<p>Fecha de nacimiento</p>
		<input type="date" name="nacim">
		<input type="submit" value="Enviar" name="enviar"/>
	</form>

</body>
</html>