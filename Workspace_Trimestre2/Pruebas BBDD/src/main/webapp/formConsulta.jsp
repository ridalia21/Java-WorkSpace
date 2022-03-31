<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="consultaP" method="get">
		<p>
			¿Está checkeado? <select name="ok" required="required">
				<option value="1">si</option>
				<option value="0">no</option>
			</select>
		</p>
		<p>
			<input type="date" name="fecha1" required="required">
		</p>
		<p>
			<input type="date" name="fecha2" required="required">
		</p>
		<input type="submit" name="enviar" value="Enviar">
	</form>
	<p>
		<a href="formInsert.jsp">Inicio</a>
	</p>
</body>
</html>