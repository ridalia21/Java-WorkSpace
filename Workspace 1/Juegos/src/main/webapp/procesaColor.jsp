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
	String color = request.getParameter("color");
	String colorO = request.getParameter("colorO");
	%>
	<p>
		La figura era un
		<%=colorO%></p>
	<p>
		Tu elegiste
		<%=color%></p>

	<%
	if (color.equals(colorO)) {
		out.print("Acertaste");
	} else
		out.print("Has fallado");
	%>

	<p>
		<a href="discriminaColor.jsp">Volver a jugar</a>
	</p>
</body>
</html>