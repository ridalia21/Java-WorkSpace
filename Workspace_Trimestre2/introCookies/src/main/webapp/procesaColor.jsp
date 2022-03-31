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
String color=request.getParameter("color");
if (color!=null){
	Cookie miCookie=new Cookie("bodyColor",color);
	response.addCookie(miCookie);
}
%>

<h1>Página relacionada con el color	</h1>
<p><a href="color2.jsp">Entrar en color</a></p>
<p><a href="index.jsp">Volver al índice</a></p>
</body>
</html>