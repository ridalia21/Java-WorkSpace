<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%--Con esta línea se importa en jsp funciones de fecha para la página--%>
<%@ page import="java.time.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>Ejercicios varios</title>
</head>
<body>

<%
LocalDateTime d=LocalDateTime.now();
%>
<p>Hoy es <%=d %></p>

<a href="index.html">Vuelta atrás</a>

</body>
</html>