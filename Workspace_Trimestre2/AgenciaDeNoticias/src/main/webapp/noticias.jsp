<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="modelo.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Noticias</title>
</head>
<body>
<h1>Bienvenido a nuestra aplicación</h1>
	<%
	HttpSession sesion = (HttpSession) request.getSession();
	Usuario u = null;
	if (sesion.getAttribute("usuario") != null) {
		u = (Usuario) sesion.getAttribute("usuario");
		out.print("<p> Tu eres: " + u.getUser() + "</p>");
		out.print("<p> Del Tipo: " + u.getTipo() + "</p>");
		if (u.getTipo().equals("editor") || u.getTipo().equals("administrador")) {
			%>
				<p><a href="escribirNoticia.jsp?nombreUser=<%=u.getUser()%>">Escribir noticia</a></p>
			<% 
		}
		int numeroRegPorPg = (Integer) request.getAttribute("numeroRegPorPg");
		int numeroDePagina = (Integer) request.getAttribute("numeroDePagina");
		int cuantos = (Integer) request.getAttribute("cuantos");
		ArrayList<Noticia> noti = (ArrayList<Noticia>) request.getAttribute("listaL");
		
		int numPags = (cuantos / numeroRegPorPg) + 1;
		
		if (u.getTipo().equals("administrador")) {
			for (Noticia n : noti) {
				String r = n.dameReg();
				System.out.println(r);
			%>
			<p><%=n.toString() %>&nbsp;<a href="eliminar?reg=<%=r %>">Eliminar</a></p>
			<% 
			}
			
			for (int i = 0; i < numPags; i++) {
				if (i != numeroDePagina) {
					%> 
					<a href="verPags?numeroDePagina=<%=i %>"><%=i %></a>
					<% 
				} else {
					out.print(" " + i + "");
				}
			}
		} else {
			for (Noticia n : noti) {
				String r = n.dameReg();
				System.out.println(r);
			%>
			<p><%=n %></p>
			<% 
			}
			for (int i = 0; i < numPags; i++) {
				if (i != numeroDePagina) {
					%> 
					<a href="verPags?numeroDePagina=<%=i %>"><%=i %></a>
					<% 
				} else {
					out.print(" " + i + "");
				}
			}
		}
	} else {
		if (request.getParameter("numeroRegPorPg") == null || request.getParameter("numeroDePagina") == null) {
			out.print("<p>No has entrado como ningún tipo de usuario</p>");	
		} else {
			int numeroRegPorPg = Integer.parseInt(request.getParameter("numeroRegPorPg"));
			int numeroDePagina = Integer.parseInt(request.getParameter("numeroDePagina"));
			int cuantos = (Integer) request.getAttribute("cuantos");
			ArrayList<Noticia> noti = (ArrayList<Noticia>) request.getAttribute("listaL");
			int numPags = (cuantos / numeroRegPorPg) + 1;
			
			for (Noticia n : noti) {
				String r = n.dameReg();
				System.out.println(r);
			%>
			<p><%=n %></p>
			<% 
			}
			for (int i = 0; i < numPags; i++) {
				if (i != numeroDePagina) {
					%> 
					<a href="verPags?numeroDePagina=<%=i %>"><%=i %></a>
					<% 
				} else {
					out.print(" " + i + "");
				}
			}
		}
	}
	%>
	
	<p><a href="matar">Cerrar sesión</a></p>
	<p><a href="index.jsp">Volver al index</a></p>
</body>
</html>