<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="modelo.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Ejemplo inyección SQL</h3>
	<%
	String error = (String) request.getAttribute("error");
	ArrayList<Usuario> l =(ArrayList<Usuario>) request.getAttribute("lista");
	if(error != null){
		out.print("<h2>"+error+"</h2>");
	}
	if(l != null){
		if (l.size() == 0) {
			out.print("No hay nada en la lista");
		} else {
			for(int i = 0; i < l.size(); i++){
				%>
				<p><%=l.get(i) %></p>
				<%
			}
		}
	}
	%>
	<p><a href="inyeccion.jsp">Volver a inyectar</a></p>
</body>
</html>