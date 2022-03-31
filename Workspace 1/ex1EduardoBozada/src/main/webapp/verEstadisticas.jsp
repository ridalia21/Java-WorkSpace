<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ex1EduardoBozada.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ver estadísticas</title>
</head>
<body>
	<%
	int contCinef = 0;
	int contNatur = 0;
	int contUrb = 0;
	int contDeport = 0;
	%>
	<h2>Opiniones emitidas por perfil de los encuestados</h2>
	<%
	ClaseForo cf1 = new ClaseForo("D:\\Workspace 1\\ex1EduardoBozada\\src\\main\\webapp\\foro.txt");
	ArrayList<String> lf = cf1.leerFichero();
	String[] perfiles;
	for (int i = 0; i < lf.size(); i++) {
		perfiles = lf.get(i).split(";");
		if (perfiles[2].equals("cinefilo")) {
			contCinef++;
			out.print("<p style='border: 1px solid; width: 40%'> cinefilo" + contCinef +"</p>");
		} else if (perfiles[2].equals("naturalista")) {
			contNatur++;
			out.print("<p style='border: 1px solid; width: 40%'> naturalista" + contNatur +"</p>");
		} else if (perfiles[2].equals("urbanita")) {
			contUrb++;
			out.print("<p style='border: 1px solid; width: 40%'> urbanita" + contUrb +"</p>");
		} else if (perfiles[2].equals("deportista")) {
			contDeport++;
			out.print("<p style='border: 1px solid; width: 40%'> deportista" + contDeport +"</p>");
		}
	}
	%>
	<a href="ForoDeOpiniones.jsp">Volve a comentar</a>
</body>
</html>