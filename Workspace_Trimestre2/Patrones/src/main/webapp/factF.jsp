<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="resuelveFigura" method="post">
	<p>
		<select name="figura" required>
			<option>Elige figura...</option>
			<option>circulo</option>
			<option>rectangulo</option>
		</select>
	</p>
	<p>
		<select name="color" required>
			<option>Elige color...</option>
			<option>red</option>
			<option>blue</option>
			<option>green</option>
			<option>orange</option>
		</select>
	</p>
	<input type="number" name="medida" min="50" max="120" required>
	<input type="submit" name="Enviar" value="Enviar">
</form>
</body>
</html>