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
	String error = (String) request.getAttribute("error");
	if (error != null) {
		if (error.equals("1")) {
			out.print("<h2>Inserción conseguida</h2");	
		} else if (error.equals("0")) {
			out.print("<h2>Inserción fallida</h2");	
		}
	} 
	%>
	
	<p><a href="formInsert.jsp">Inicio</a></p>
</body>
</html>