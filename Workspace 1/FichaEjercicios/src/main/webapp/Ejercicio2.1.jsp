<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario reentrante</title>
</head>
<body>
<h1>Formulario entrante</h1>
	<%
	String nombre = request.getParameter("nombre");

	if (request.getParameter("enviar") != null) {
		nombre = request.getParameter("nombre").trim();
		if (nombre.length() > 0)
			out.print("Hola "+ nombre);
		else
			out.print("Has dejado el nombre en blanco");
	} else {
	%>
	<form action="" method="get">
		<p>Escriba su nombre:</p>
		<input type="text" name="nombre" maxlength="20" /> 
		<input type="submit" value="Enviar" name="enviar" />
	</form>
	<%
	}
	%>


</body>
</html>