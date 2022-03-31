<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="modelo.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String s=(String)request.getAttribute("accion");
%>
<p><%=s %></p>
<p><a href="index.jsp">Volver</a></p>
</body>
</html>