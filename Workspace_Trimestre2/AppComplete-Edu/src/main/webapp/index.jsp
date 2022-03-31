<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String error = (String) request.getAttribute("mensaje");
	if (error != null)
		out.print("<h2>" + error + "</h2");
	%>
	<h1>ACREDITACIÓN</h1>
	<form action="acreditacion" method="post">
		<p>Usuario <input type="text" name="login" required></p>
		<p>Contraseña <input type="text" name="clave" required></p>
		<!-- hay un tipo clave que hace que no haya eco de pantalla -->
		<input type="submit" name="enviar" value="enviar" required>

	</form>
</body>
</html>