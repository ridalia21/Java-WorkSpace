<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DatosEj4</title>
</head>
<body>

	<%
	Double n1 = Double.parseDouble(request.getParameter("eur"));
	//La siguiente línea sirve para declarar esa variable como constante
	final double cambio = 166.3860;
	%>
	<p><%out.print(request.getParameter("eur"));%> euro/s al cambio son <%=n1 * cambio%> peseta/s</p>

</body>
</html>