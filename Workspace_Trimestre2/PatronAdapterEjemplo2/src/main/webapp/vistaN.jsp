<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vistaAlumno.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pag1</title>
</head>
<body>
	<table>
		<tr>
			<th>Nombre:</th>
			<th>Edad:</th>
		</tr>
		<%
		ArrayList<alumnoNuevo> aln = (ArrayList<alumnoNuevo>) request.getAttribute("misNuevosAlumnos");
		for (alumnoNuevo a : aln) {
		%>
		<tr>
			<td><%=a.getNombre()%></td>
			<td><%=a.getEdad()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<a href="indexAlumnos.jsp">Volver al index</a>
</body>
</html>