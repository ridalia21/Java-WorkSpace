<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Platos</title>
</head>
<body>
	<p>Elige un plato de mi carta</p>
	<form action="resuelvePlatos" method="get">
		<select name="plato" required>
			<%
			for (int i = 0; i < Carta.misPlatos[0].length; i++) {
				%><option><%=Carta.misPlatos[0][i]%></option> <%
			}
			%>
		</select>
		<p><input type="submit" name="enviar" value="Enviar"/></p>
	</form>
</body>
</html>