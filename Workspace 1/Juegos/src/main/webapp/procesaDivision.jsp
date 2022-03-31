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
	String resto = request.getParameter("resto");//sol jugador
	String cociente = request.getParameter("cociente");//sol jugador
	String problema = request.getParameter("problema");
	String cocO = request.getParameter("cocO");
	String restoO = request.getParameter("restoO");
%>
<p>El cociente era <%=cocO %></p>
<p>Tu pusiste <%=cociente %></p>
<p>El resto era <%=restoO %></p>
<p>Tu pusiste <%=resto %></p>
<p>La operación era <%=problema %></p>
<%
	if (cocO.equals(cociente) && restoO.equals(resto)) {
		out.print("Has acertado");
	}else out.print("Has fallado");
%>
</body>
</html>