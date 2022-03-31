<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Modificar</h1>
	<%
	String error = (String) request.getAttribute("error");
	if(error != null){
		try{
			int n = Integer.parseInt(error);
			if(n > 0)out.print("<p>Registro modificado</p>");
			else out.print("<p>No hay registros coincidentes</p>");
		}catch(Exception e){
			out.print("<p>"+e.getMessage()+"</p>");
		}
	}
	%>
	<form action="crud" method="post">
		Escribe ID<input type="number" name="ident" min = "1" required><br>
		<input type="hidden" name="accion" value="3">
		<input type="submit" name="enviar" value="enviar">
	</form>
	<a href="index.jsp">Volver al index</a>
</body>
</html>