<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Página de registro</title>
</head>
<body>
<%
	String mensaje = (String) request.getAttribute("m1");
	if (mensaje != null) {
		out.print(mensaje);
	}
%>
<h1>Página de registro</h1>
	<form action="controlRegistro" method="post">
		<p>El caracter ":" no puede formar parte ni del login ni del passw</p>
		<p>La passw debe tener al menos 4 caracteres y comenzando por número se</p>
		<p>Usuario: <input type="text" name="usr" pattern="[^:]+" required></p>
		<p>Contraseña: <input type="password" name="passw" pattern="[^:]+" required></p>
		<p><input type="submit" id="enviar" name="enviar" value="Enviar"></p>
	</form>
</body>
</html>