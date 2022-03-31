<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ex1EduardoBozada.ClaseForo, java.util.*, java.time.*, java.time.temporal.ChronoUnit" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OpinionesOrdenadas</title>
</head>
<body>
<h2>Datos ordenados del más reciente al más lejano</h2>
	<%
	ClaseForo cf1 = new ClaseForo("D:\\Workspace 1\\ex1EduardoBozada\\src\\main\\webapp\\foro.txt");
	ArrayList <String> lf = cf1.leerFichero();
	for (int i = 0; i < lf.size(); i++) {
		out.print("<p style='border: 1px solid; width: 40%'>"+lf.get(i)+"</p>");
	}
	%>
	<a href="ForoDeOpiniones.jsp">Volve a comentar</a>
</body>
</html>