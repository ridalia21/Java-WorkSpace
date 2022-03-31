<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//Para el primer párrafo de código
	String texto = request.getParameter("texto");
	
	//Para el segundo párrafo de código
	//String texto = request.getParameter("texto").trim();
	
	/*
	* Esto devuelve toda la longitud de la cadena y la longitud de cada 
	* caracter separado por el caracter separador
	*/
	/*String[] pedazos = texto.split(";");
	out.print("<p>Tamaño del texto introducido = "+texto.length()+"</p>");
	texto.trim();
	out.print("<p>Tamaño del texto introducido = "+texto.length()+"</p>");
	for (int i = 0; i < pedazos.length; i++) {
		out.print("<p>"+pedazos[i]+" tam "+pedazos[i].length()+"</p>");
	}*/
	
	/* 
	* Esto crea un fichero y escribe en él el contenido de la cadena escrita
	* como parametro
	*/
	Archivo f = new Archivo("D:\\Workspace 1\\Agenda-OrdenaNotas-Cartas\\src\\main\\webapp\\ficheros\\prueba1.txt");
	f.escribirLinea(texto, true);
	//Archivo l = new Archivo("D:\\Workspace 1\\Agenda-OrdenaNotas-Cartas\\src\\main\\webapp\\ficheros\\prueba1.txt");
	ArrayList <String> lf = f.leerFichero();
	for (int i = 0; i < f.leerFichero().size(); i++) {
		out.print("<p>"+ lf.get(i)+"</p>");
	}
	%>
	<p><a href="pruebaEscribir.jsp">Vuelve a escribir en el fichero</a></p>
</body>
</html>