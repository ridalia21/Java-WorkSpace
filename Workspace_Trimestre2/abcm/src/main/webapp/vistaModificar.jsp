<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "modelo.*, java.util.*, utilidades.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Modificaciones</h1>
	<%
	String error = (String) request.getAttribute("error");
	if(error != null){
		out.print("<p>"+error+"</p>");
		ArrayList<Especialidades> l = (ArrayList<Especialidades>)request.getAttribute("reg");
		if(l != null){
			if(l.size() == 1){
				%>
				<form action="crud" method="post">
					ID <input type="number" name="id" value = "<%=l.get(0).getId()%>" readonly><br>
					Nombre <input type="text" name="nombre" value = "<%=l.get(0).getNombre()%>" required><br>
					Horas <input type="number" name="horas" min="100" value="<%=l.get(0).getHoras()%>" required><br>
					nivel
					<select name="nivel" selected = "<%=l.get(0).getNivel()%>">
						<%out.print(Util.seleccion(l.get(0).getNivel()));%>
					</select><br>
					<input type="hidden" name="accion" value="5">
					<input type="hidden" name="identificador" value="<%=l.get(0).getId()%>">
					<input type="submit" name="enviar" value="enviar">
				</form>
				<%
			}else if(l.size() == 0) out.print("<p>El registro no existe</p>");
		}
	}
	%>
	<a href="index.jsp">Volver al index</a>
</body>
</html>