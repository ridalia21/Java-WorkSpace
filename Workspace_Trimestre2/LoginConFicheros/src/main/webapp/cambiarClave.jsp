<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cambiar Clave</title>
</head>
<body>
<h1>Página de cambio de clave</h1>
	<%
	String login = request.getParameter("login");
	if (login != null) {
		out.print("Bienvenido, eres administrador: " + login);
	} else {
		out.print("Tenemos un problema");
	}
	%>
	<form action="cambiarClave" method="post">
		<p>Pon tu nueva clave:</p>
		<p>
			Contraseña: <input type="password" name="passw" pattern="[^:]+"
				required>
		</p>
		<input type="hidden" name="login" value="<%=login %>">
		<p>
			<input type="submit" id="enviar" name="enviar" value="Enviar">
		</p>
	</form>
</body>
</html>