<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ver todo</title>
</head>
<body>
	<h2>Ver todas las notas:</h2>
	<%
	Archivo f = new Archivo("D:\\Workspace 1\\Ordenar&ClasificarNotas\\src\\main\\webapp\\notas.txt");
	//ArrayList<String> misNotas = new ArrayList<String>(f.leerLineasF());
	ArrayList<String> misNotas = f.leerFichero();
	for (int i = 0; i < misNotas.size(); i++) {
	%>
	<p><%=misNotas.get(i)%></p>
	<%
	}
	%>
	<p>
		<a href="notasProcesadas.jsp?v=1">Aprobados:</a>
	</p>
	<p>
		<a href="notasProcesadas.jsp?v=2">Suspensos:</a>
	</p>

</body>
</html>