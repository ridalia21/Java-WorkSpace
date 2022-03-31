<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calcula los resultados</title>
</head>
<body>
	<h2>Dividir 1 (Formulario)</h2>
	<form action="procesaDivision.jsp" method="get">
		<p>Escriba el resultado de la siguiente división entera:</p>
		<%
		JuegosClass numsDivi = new JuegosClass();
		String problema = numsDivi.cocienteDivi() + " / " + numsDivi.restoDivi();
		int num1 = numsDivi.getNum1();
		int num2 = numsDivi.getNum2();
		%>
		<p><%=num1%> / <%=num2%></p>
		<p>
			Cociente =
			<%=numsDivi.cocienteDivi()%>, 
			resto =
			<%=numsDivi.restoDivi()%></p>
		<p>
			Cociente <input type="number" name="cocO" pattern="[0-9]" min="0"
				style="width: 40px"> y resto <input type="number"
				name="restoO" pattern="[0-9]" min="0" style="width: 40px">
		</p>
		<input type="hidden" name="cociente" value="<%=numsDivi.cocienteDivi()%>"> 
		<input type="hidden" name="resto" value="<%=numsDivi.restoDivi()%>">
		<input type="hidden" name="problema" value="<%=problema%>">
		<input type="submit" name="corregir" value="Corregir">
		<input type="submit" name="borrar" value="Borrar">
			
	</form>
	<hr>
	<p>
		<a href="MenuJuegos.jsp">Volver a jugar</a>
	</p>
</body>
</html>