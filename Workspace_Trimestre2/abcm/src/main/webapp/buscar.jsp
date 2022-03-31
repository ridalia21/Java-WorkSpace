<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Buscar</h1>
	<%
	//reservado para errores
	%>
	<form action="crud" method="post">
		<select name="campo">
			<option>id</option>
			<option>nombre</option>
			<option>horas</option>
			<option>nivel</option>
		</select><br>
		<input type="text" name="datos" required><br>
		<input type="hidden" name="accion" value="4">
		<input type="submit" name="enviar" value="enviar">
	</form>
	<a href="index.jsp">Volver al index</a>
</body>
</html>