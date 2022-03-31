<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="modelo.Factory.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Figura f1 = (Figura) request.getAttribute("miFigura");
%>
<p><%=f1.dibuja() %></p>
</body>
</html>