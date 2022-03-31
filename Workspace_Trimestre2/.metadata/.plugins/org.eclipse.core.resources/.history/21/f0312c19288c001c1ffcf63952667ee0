<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Escribir Noticia</title>
</head>
<body>
	
	<h1>Escribir Noticia</h1>
	<form action="crearNoticia" method="post">
		<p>
			Título: <input type="text" name="titulo" required>
		</p>
		<p>
			Fecha: <input type="date" name="fecha" required>
		</p>
		<p>
			Cuerpo: <textarea rows="12" cols="20" name="cuerpoNoti" required></textarea>
		</p>
		<input type="hidden" name="nomEditor" value="<%=request.getParameter("nombreUser")%>">
		<input type="submit" name="enviar" value="enviar" required>
	</form>
	
	<%
		String error = (String) request.getAttribute("error");
		Integer valorInsert = (Integer) request.getAttribute("valorInsert");
		if (error != null) out.print("<h3>" + error + "</h3>");
		else if (valorInsert != null && valorInsert > 0) out.print("<h3>La noticia se ha guardado en la base de datos</h3>");
	%>
	
	<p>
		<a href="index.jsp">Volver al index</a>
	</p>
</body>
</html>