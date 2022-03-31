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
		out.print("<h3>" + error + "</h3>");
	}
%>
	<h1>Empresa xx Acreditación</h1>
	<form action="Inyectar" method="post">
		<p>
			Introduce dni: <input type="text" name="dni" required />
		</p>
		<p>
			<input type="submit" name="enviar" value="Enviar">
		</p>
	</form>
</body>
</html>