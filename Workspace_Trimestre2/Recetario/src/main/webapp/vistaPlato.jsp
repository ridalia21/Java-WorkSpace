<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Receta</title>
<style type="text/css">
h1 {
	text-align: center
}
</style>
</head>
<body>
	<%
	plato actual = (plato) request.getAttribute("miPlato");
	String elaboracion = actual.describeReceta();
	%>

	<h2>
		Receta
		<%=actual.getNombrePlato()%></h2>
	<h2>
		Dificultad
		<%=actual.getDificultad()%></h2>
	<h2>Ingredientes</h2>
	<ul>
		<%
		String[] ingre = actual.getIngredientes().split(",");
		for (String ig : ingre) {
			out.print("<li>" + ig + "</li>");
		}
		%>
	</ul>
	<h2>Elaboración</h2>
	<p><%=elaboracion%></p>
	<p><img alt="foto" src="<%=actual.getImagenPlato() %>" width="80px" height="65px"></p>
</body>
</html>