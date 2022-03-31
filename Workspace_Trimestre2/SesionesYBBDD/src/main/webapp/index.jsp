<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Acreditación</h1>
	<form action="acreditacion" method="post">
		<p>
			Introduce tu usuario <input type="text" name="login" required>
		</p>
		<p>
			Introduce tu contraseña <input type="text" name="clave" required>
		</p>
		<p>
			<input type="submit" id="enviar" value="Enviar">
		</p>
	</form>
</body>
</html>