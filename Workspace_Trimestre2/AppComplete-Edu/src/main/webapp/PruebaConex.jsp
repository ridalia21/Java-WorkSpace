<%@page import="utilidades.ConectarV"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prueba Conex</title>
</head>
<body>
	<%
		ConectarV conexion = new ConectarV("alumnos");
		conexion.desconectar();
	%>
</body>
</html>