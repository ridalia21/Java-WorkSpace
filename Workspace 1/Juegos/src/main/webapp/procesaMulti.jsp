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
	int resul = Integer.parseInt(request.getParameter("resulMulti"));
	int solJug = Integer.parseInt(request.getParameter("resul"));
	String signo = request.getParameter("signo");
	%>
	<%
	if (resul < 0) {
		solJug *= (-1);
		if (signo.equals("-")) {
			if (resul == solJug) {
				out.print("Has acertado");
			}else out.print("El resultado no es correcto");
		}else out.print("El signo no es correcto");
	}else if (resul == solJug) {
		out.print("Has acertado");
	}else out.print("Te has equivocado");
	
	%>
	<p>
		<a href="Multiplica.jsp">Volver a jugar</a>
	</p>
</body>
</html>