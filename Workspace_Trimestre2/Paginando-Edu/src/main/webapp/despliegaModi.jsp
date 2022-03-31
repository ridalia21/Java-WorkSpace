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
			out.print("modificación realizada");
		} else {
			out.print("modificación no realizada por " + error);
		}
	}
	%>
	<p><a href="index.jsp">Página principal</a></p>
</body>
</html>