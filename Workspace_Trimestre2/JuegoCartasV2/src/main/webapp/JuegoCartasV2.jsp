<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Archivo directorio = new Archivo("D:\\Workspace 1\\Agenda-OrdenaNotas-Cartas\\src\\main\\webapp\\imagenes");
	ComparaCartas baraja = new ComparaCartas("D:\\Workspace 1\\Agenda-OrdenaNotas-Cartas\\src\\main\\webapp\\imagenes");
	String[] misCartas = directorio.devuelveArchivosDirectorio();
	/*
	 * Al usar esta función, el array misCartas se llena con los nombres de los archivos del directorio
	 */
	String[] cartasBanca;
	String[] cartasJugador;
	
	if (misCartas != null) 
	{
		String rutJugador = request.getContextPath() + "\\imagenes";
		String rutBanca = request.getContextPath() + "\\imagenes";
		cartasBanca = baraja.devuelveMano();
		cartasJugador = baraja.devuelveMano();
	
		%>
	<p>
		Mano del jugador
		<% 
		for (int i = 0; i < cartasJugador.length; i++) {
			rutJugador += "\\" + cartasJugador[i];
			System.out.println(rutJugador);
		%>
			<img src="<%=rutJugador%>" alt="foto">
		<%
		}
		%>
	</p>

	<p>
		Mano de la banca 
		<% 
		for (int i = 0; i < cartasBanca.length; i++) {
			rutBanca += "\\" + cartasBanca[i];
			System.out.println(rutBanca);
		%>
			<img alt="foto" src="<%=rutBanca %>">
		<%
		}
	}
		%>
	</p>
	
</body>
</html>