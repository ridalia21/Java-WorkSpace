<%@page import="Modelo.Persona"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prueba llamada a clase desde jsp</title>
</head>
<body>

<%
Persona p = new Persona("70080792E", "Pepe");
out.print(p.quienEres());
int v=(int)(Math.random()*24);

%>
<br>
<form action="procesaPresentacion.jsp" method="get">
<p>Escribe el deporte que practiques:</p>
<input type="text" name="deporte" required/>
<p>Cuantas horas lo practicas?</p>
<input type="number" name="horas" min="0" max="<%=v %>" step="2" required/>
<input type="submit" value="enviar" name="enviar" />
</form>

</body>
</html>