<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="utilidades.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prueba 1</title>
</head>
<body>
	<%
	ConectarViejaFormula c = new ConectarViejaFormula("instituto");
	c.desconectar();
	%>
</body>
</html>