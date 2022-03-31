<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vistaMotor.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		motorComun motor = new motorComun();
		out.print("<p>" + motor.getAccion() + "<p/>");
		motor.encender();
		out.print("<p>" + motor.getAccion() + "<p/>");
		motor.acelerar();
		out.print("<p>" + motor.getAccion() + "<p/>");
		motor.apagar();
		out.print("<p>" + motor.getAccion() + "<p/>");
		
		motorElectricoAdaptador motor2 = new motorElectricoAdaptador();
		out.print("<p>" + motor2.getAccion() + "<p/>");
		motor2.encender();
		out.print("<p>" + motor2.getAccion() + "<p/>");
		motor2.acelerar();
		out.print("<p>" + motor2.getAccion() + "<p/>");
		motor2.apagar();
		out.print("<p>" + motor2.getAccion() + "<p/>");
	%>
</body>
</html>