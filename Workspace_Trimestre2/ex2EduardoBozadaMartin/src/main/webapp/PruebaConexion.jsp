<%@ page import="utilidades.ConectarV"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ConectarV c = new ConectarV("encuesta");
	c.desconectar();
	%>
</body>
</html>