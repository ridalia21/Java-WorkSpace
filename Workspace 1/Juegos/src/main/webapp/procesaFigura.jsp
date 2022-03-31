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
	String figura = request.getParameter("figura");
	String figuraO = request.getParameter("figuraO");
	%>
	<p>
		La figura era un
		<%=figuraO%></p>
	<p>
		Tu elegiste
		<%=figura%></p>

	<%
	if (figura.equals(figuraO)) {
		out.print("Acertaste");
	} else
		out.print("Has fallado");
	%>

	<p>
		<a href="discriminaFigura.jsp">Volver a jugar</a>
	</p>
</body>
</html>