<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sesiones</title>
</head>
<body>
<h1>página segura</h1>
<ul>
<li><a href="verSesion.jsp">ver sesion</a></li>
<li><a href="matar">matar sesion</a></li>
<li><a href="navegar">navegar</a></li>
</ul>
<form action="CrearSesion" method="post">
pon  dni: <input type="text" name="dni" required>
pon  nombre: <input type="text" name="nombre" required>
pon  nota: <input type="number" name="nota" min="0" max="10" required>
<input type="submit" name="enviar" value="enviar">
</form>
</body>
</html>