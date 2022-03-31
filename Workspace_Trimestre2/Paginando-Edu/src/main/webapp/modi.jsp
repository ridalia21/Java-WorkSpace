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
	String reg = request.getParameter("reg");
	if (reg != null) {
		String[] registro = reg.split(":");
	%>
	<h1>Formulario</h1>

	<form action="modificar" method="post">
		<p>ID: <input type="number" name="id" value="<%=registro[0] %>" readonly> </p>
		<p>DNI: <input type="text" name="dni" value="<%=registro[1] %>" required> </p>
		<p>Nombre: <input type="text" name="nom" value="<%=registro[2] %>" required> </p>
		<p>Ape1: <input type="text" name="ape1" value="<%=registro[3] %>" required> </p>
		<p>Ape2: <input type="text" name="ape2" value="<%=registro[4] %>" required> </p>
		<p>Carrera: <input type="text" name="carrera" value="<%=registro[5] %>" required> </p>
		<p>Nota: <input type="number" name="nota" value="<%=registro[6] %>" required> </p>
		<p><input type="submit" name="enviar" value="Confirmar"></p>
	</form>
	
	<%} %>
	<p><a href="index.jsp">Volver a la página principal</a></p>
</body>
</html>