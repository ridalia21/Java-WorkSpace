<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicios varios</title>
</head>
<body>

<%
	String ruta = request.getContextPath();
	int num = (int)(Math.random()*100);
	ruta += "/imagenes/img1.jpg";
%>

<p>El número es <%=num %></p>

<%
//Mostrar imagen si se cumple la condición
	if(num%2==0) {			
%>

<p><img alt="patata" src="<%=ruta %>"></img></p>
<%}else { %>
	<p>Este es mi contexto <%=ruta%> </p>	
<%} %>

<a href="index.html">Vuelta atrás</a>

</body>
</html>