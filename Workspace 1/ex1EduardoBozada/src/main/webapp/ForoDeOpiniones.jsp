<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ex1EduardoBozada.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Foro de opiniones</title>
</head>
<body>
	<h2>Foro de opiniones</h2>
	<form action="ProcesaForo.jsp" method="post">
		<p> <a href="verOpiniones.jsp">Ver opiniones</a></p>
		<p> <a href="verEstadisticas.jsp">Ver estadísticas</a></p>
		<p>Nombre: <input type="text" name="nombre"/></p>
		<p>Te identificas más como:</p>
		<div>
			<select name="perfil">
				<%
					for (int i = 0; i < ClaseForo.perfil.length; i++) {
						String perf = ClaseForo.perfil[i];
						%> <option value="<%=i %>"><%=perf %></option> <% 
					}
				%>
			</select>
		</div>
		<br>
			<p>Deja un comentario sobre nuestro sitio: <textarea name="coment" rows="4" cols="18" maxlength="70"></textarea></p>
			<input type="submit" name="Añadir" value="enviar"/>
	</form>
	
</body>
</html>