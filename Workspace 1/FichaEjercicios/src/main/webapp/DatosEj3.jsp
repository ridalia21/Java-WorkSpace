<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DatosEj3</title>
</head>
<body>

	<%
	Double n1 = Double.parseDouble(request.getParameter("nota1"));
	Double n2 = Double.parseDouble(request.getParameter("nota2"));
	Double n3 = Double.parseDouble(request.getParameter("nota3"));
	%>
	<%
	Double resu = n1+n2+n3;
	Double media = resu/3;
	%>

	<%-- El código a continuación redondea a las décimas --%>
	<p>La media es <%=Math.round(media*10.0)/10.0 %></p>
</body>
</html>