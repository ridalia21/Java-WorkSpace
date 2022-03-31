<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registrarse</title>
</head>
<body>
	<%
	String error = (String) request.getAttribute("mensaje");
	if (error != null)
		out.print("<h2>" + error + "</h2");
	%>
	<h1>Registro</h1>
	<form action="registro" method="post">
		<p>
			Usuario: <input type="text" name="login" required>
		</p>
		<p>
			Contraseña: <input type="password" name="clave" required>
		</p>
		<p>
			Tipo de usuario: 
			<select name="tipo">
				<option>lector</option>
				<option>editor</option>
				<option>administrador</option>
			</select>
		</p>
		<input type="submit" name="enviar" value="enviar" required>
	</form>
	<p><a href="index.jsp">Volver al index</a></p>
</body>
</html>