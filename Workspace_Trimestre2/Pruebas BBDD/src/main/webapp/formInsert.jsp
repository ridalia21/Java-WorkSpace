<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insertarP" method="post">
		<p>
		¿Está checkeado?
			<select name="ok" required="required">
				<option>si</option>
				<option>no</option>
			</select>
		</p>
		<p><input type="date" name="fecha" required="required"></p>
		<input type="submit" name="enviar" value="Enviar">
	</form>
	<p>
		<a href="formInsert.jsp">Inicio</a>
	</p>
</body>
</html>