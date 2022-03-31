<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calcula los resultados</title>
</head>
<body>
<form action="procesaMulti.jsp" method="post">
	<h2>Multiplicar 1 (Formulario)</h2>
	<p>Escriba el resultado de la siguiente multiplicación:</p>
	<%
		JuegosClass multip = new JuegosClass();
		int num1 = multip.getNum1();
		int num3 = multip.negativoNum3();
	%>
	<p><%=num1 %> * <%=num3 %></p>
	
	<p>
		Signo <input type="text" name="signo" style="width: 40px"> y
		resultado <input type="text" name="resul" min="0" style="width: 40px">
	</p>
	<input type="hidden" name="resulMulti" value="<%=multip.resulMultip() %>">
	<input type="submit" name="corregir" value="Corregir">
</form>
	<p>
		<a href="MenuJuegos.jsp">Volver a jugar</a>
	</p>
</body>
</html>