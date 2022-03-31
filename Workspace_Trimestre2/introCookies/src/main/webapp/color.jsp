<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="procesaColor.jsp" method="post">
<p> De que color quieres el fondo manin? </p>
<select name="color">
<option value="green">verde</option>
<option value="red">rojo</option>
<option value="orange">naranja</option>
</select>
<input type="submit" name="enviar" value="enviar"/>
</form>
<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>