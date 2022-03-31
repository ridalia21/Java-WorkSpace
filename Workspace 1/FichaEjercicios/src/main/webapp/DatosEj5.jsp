<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DatosEj5</title>
</head>
<body>

	<%
	Double n1 = Double.parseDouble(request.getParameter("pes"));
	final double cambio = 0.0060;
	%>
	<p><%=n1 * cambio%></p>

</body>
</html>