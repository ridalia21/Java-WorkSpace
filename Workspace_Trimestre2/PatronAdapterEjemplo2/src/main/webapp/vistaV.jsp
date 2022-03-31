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
			<th>Fecha de nacimiento:</th>
			<th>Nombre:</th>
			<th>Apellidos:</th>
		</tr>
		<%
		ArrayList<alumnoViejo> aln = (ArrayList<alumnoViejo>) request.getAttribute("misViejosAlumnos");
		for (alumnoViejo a : aln) {
		%>
		<tr>
			<td><%=a.getFecha()%></td>
			<td><%=a.getNombre()%></td>
			<td><%=a.getApellido()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<a href="indexAlumnos.jsp">Volver al index</a>
</body>
</html>