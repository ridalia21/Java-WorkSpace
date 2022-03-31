<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vista.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pag1</title>
</head>
<body>
	<%
		Arrancable motor;
		Coche c = new Coche("2786-GTM","gasolina");
		Avion a = new Avion("boin747",8,200);
		motor = c;
		out.print("<p>" + motor.toString() + "<p/>");
		out.print("<p>" + motor.arrancar() + "<p/>");
		motor = a;
		out.print("<p>" + motor.toString() + "<p/>");
		out.print("<p>" + motor.arrancar() + "<p/>");
	%>
</body>
</html>