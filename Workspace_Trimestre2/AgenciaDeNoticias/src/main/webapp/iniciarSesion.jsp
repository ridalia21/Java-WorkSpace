<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Iniciar Sesión</title>
</head>
<body>
	<h1>Inicio de sesión</h1>
	<form action="acreditacion" method="post">
		<p>Usuario <input type="text" name="login" required></p>
		<p>Contraseña <input type="password" name="clave" required></p>
		<input type="hidden" name="numeroRegPorPg" value="3"/>
		<input type="hidden" name="numeroDePagina" value="0"/> 
		<!-- hay un tipo clave que hace que no haya eco de pantalla -->
		<input type="submit" name="enviar" value="enviar" required>
	</form>
	
	<%
	String error = (String) request.getAttribute("mensaje");
	if (error != null) {
		out.print("<p>" + error + "</p>");
	}
	%>
	
	<p><a href="index.jsp">Volver al index</a></p>
</body>
</html>