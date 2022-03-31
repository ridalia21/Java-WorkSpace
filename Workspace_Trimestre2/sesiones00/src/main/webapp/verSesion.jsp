<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*,modelo.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ver sesion</title>
</head>
<body>
	<%
	ArrayList<Alumno> listado;
	HttpSession sesion = (HttpSession) request.getSession();
	if (sesion.getAttribute("listadoAlCal") != null) {
		listado = (ArrayList<Alumno>) sesion.getAttribute("listadoAlCal");
		for (int i = 0; i < listado.size(); i++) {
			out.print("<p>" + listado.get(i) + "</p>");
		}
	}
	%>
	<p>
		<a href="index.jsp">volver al inicio</a>
	</p>
</body>
</html>