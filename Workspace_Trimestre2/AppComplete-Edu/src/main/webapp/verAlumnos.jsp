<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*, modelo.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Ver alumnos</h1>
	<%
	Usuario u;
	HttpSession sesion = (HttpSession) request.getSession();
	if (sesion != null) {
		u = (Usuario) sesion.getAttribute("usuario");
		out.print("<p> Tu eres: " + u.getLogin() + "</p>");
		out.print("<p> Del Tipo: " + u.getTipo() + "</p>");
	}

	ArrayList<Universitario> l = (ArrayList<Universitario>) request.getAttribute("lista");
	if (l != null) {
		for (int i = 0; i < l.size(); i++) {
			out.print("<h2>"+l.get(i)+"</h2>");
		}
	}
	%>
	<p><a href="matar">MATAR SESIÓN</a></p>
	<p><a href="entrada.jsp">volver a pagina entrada</a></p>
</body>
</html>