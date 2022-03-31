<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utilidades.*, java.sql.*, modelo.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Vista despliegue de busqueda</h1>
	<%
	String error = (String) request.getAttribute("error");
	ArrayList<Especialidades> l =(ArrayList<Especialidades>) request.getAttribute("listaResul");
	if(error != null){
		out.print("<h2>"+error+"</h2>");
	}
	if(l != null){
		for(int i = 0; i < l.size(); i++){
			%>
			<p><%=l.get(i) %></p>
			<%
		}
	}
	%>
	<a href="index.jsp">Volver al index</a>
</body>
</html>