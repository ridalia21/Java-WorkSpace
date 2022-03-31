<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String deporte = request.getParameter("deporte").trim();
	double horas = Double.parseDouble(request.getParameter("horas").trim());
	%>
	<p>
		Longitud de la variable deporte =
		<%=deporte.length()%>
		y de horas =
		<%=horas%></p>
	<%
	if (deporte.isEmpty()) {
		out.print("<p>No has rellenado nada en deporte</p>");
	} else {
	%><p>
		Tu deporte es
		<%=deporte%></p>
	<%
	if (deporte.equals("natacion")) {
		response.sendRedirect("ej4.jsp");
	} else
	%><h2>No comparto tu deporte</h2>
	<%
	}
	%>
	<p>
		<a href="Presentacion.jsp">volver</a>
	</p>
</body>
</html>