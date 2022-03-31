<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.*, controlador.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Desplegar Universitario</title>
</head>
<body>
	<h1>Datos paginados</h1>
	<%
	int numeroRegPorPg = (Integer) request.getAttribute("numeroRegPorPg");
	int numeroDePagina = (Integer) request.getAttribute("numeroDePagina");
	int cuantos = (Integer) request.getAttribute("cuantos");
	ArrayList<Universitario> univ = (ArrayList<Universitario>) request.getAttribute("listaL");
	int numPags = (cuantos / numeroRegPorPg) + 1;
	for (Universitario u : univ) {
		String r = u.dameReg();
		System.out.println(r);
	%>
	<p><%=u %>&nbsp <a href="modi.jsp?reg=<%=r %>">modificar</a> <a href="eliminar?reg=<%=r %>">eliminar</a></p>
	<% 
	}
	
	for (int i = 0; i < numPags; i++) {
		if (i != numeroDePagina) {
			%> 
			<a href="BusquedaPag?numeroRegPorPg=<%=numeroRegPorPg %>&numeroDePagina=<%=i %>"><%=i %></a>
			<% 
		} else {
			out.print(" " + i + "");
		}
	}
	%>
	<p><a href="index.jsp">Volver al index</a></p>
</body>
</html>