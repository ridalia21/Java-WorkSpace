<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
Cookie[] m1 = request.getCookies();
String val = null;
if (m1 != null) {
	for (Cookie c : m1) {
		if (c.getName().equals("bodyColor")) {
	val = (String) c.getValue();
	break;
		}
	}
}
%>
<body style="background-color:<%=val%>">

	<ul>
		<li><a href="pg1.jsp">Ejercicio mantener datos entre paginas</a></li>
		<li><a href="color.jsp">Ejercicio mantener preferencias de
				color</a></li>
		<li><a href="publicidad.jsp">Ejercicio poner publicidad</a></li>
	</ul>
</body>
</html>