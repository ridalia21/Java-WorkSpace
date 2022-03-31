<%@page import="modelo.Tablero"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		div {
			width: 40px; 
			height: 40px;
			border: solid 1px;
		}
		div.color1 {
			background-color: white;
		}
		div.color2 {
			background-color: black;
		}
	</style>
</head>
<body>
	<%
	String clase1 = "color1";
	String clase2 = "color2";
	Tablero t = (Tablero) request.getAttribute("miTablero");
	out.print("<table>");
	for (int fil = 0; fil < t.getFilas(); fil++) {
		out.print("<tr>");
		for (int col = 0; col < t.getFilas(); col++) {
			if ((fil+col)%2 == 0) {
				out.print("<td><div class="+clase1+"></td>");
			}else {
				out.print("<td><div class="+clase2+"></td>");	
			}
		}
		out.print("</tr>");
	}
	out.print("</table>");
	%>
<a href="EjemploAjedrez.jsp">Volver al Index</a>
</body>
</html>