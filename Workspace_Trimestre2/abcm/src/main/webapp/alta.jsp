<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Alta nueva especialidad</h1>
	<%
	String error = (String) request.getAttribute("error");
	if(error != null){
		if(error.equals("1"))out.print("<p>Insertado</p>");
		else out.print("<p>"+error+"</p>");
	}
	%>
	<form action="crud" method="post">
		Nombre <input type="text" name="nombre" required>
		Horas <input type="number" name="horas" min="100"required>
		nivel
		<select name="nivel">
			<option>Basico</option>
			<option>Medio</option>
			<option>Superior</option>
		</select><br>
		<input type="hidden" name="accion" value="1">
		<input type="submit" name="enviar" value="enviar">
	</form>
	<a href="index.jsp">Volver al index</a>
</body>
</html>