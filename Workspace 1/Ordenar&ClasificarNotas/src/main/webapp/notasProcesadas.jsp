<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notas aprobadas</title>
<style>
table, th, td {
	border: 1px solid black;
	text-align: center;
}

tr.azul {
	background-color: aqua;
}

tr.naranja {
	background-color: orange;
}
</style>
</head>
<body>
	<%
	int v = Integer.parseInt(request.getParameter("v"));
	%>
	<h2>Listado de alumnos: </h2>
	<table>
		<tr>
			<th>Nombre</th>
			<th>Primer apellido</th>
			<th>Segundo apellido</th>
			<th>Nota</th>
		</tr>
		<%
		int contador = 0;
		String miColor = "azul";
		Archivo f = new Archivo("D:\\Workspace 1\\Ordenar&ClasificarNotas\\src\\main\\webapp\\notas.txt");
		ArrayList<String> misNotas = new ArrayList<String>(f.leerFichero());
		for (int i = 0; i < misNotas.size(); i++) {
			//decimos si la linea es par
			if (contador % 2 == 0) {
				miColor = "naranja";
			} else {
				miColor = "azul";
			}
		    /*
		    * Con el split se devuelve un array en el que en cada posición se guarda el contenido 
			* que se encuentre separado por el caracter diferenciador 
			*/
			String[] notas = misNotas.get(i).split(":");
		%>
		<tr class="<%=miColor%>">
			<%
			/*
			* Con esto obtiene la nota que se ecuentra en la última posición de la array en que 
			* se ha guardado el contenido de la línea
			*/
			int nota = Integer.parseInt(notas[notas.length - 1]); 
			/*
			* En este primer if comparamos si las notas están entre 5 y 10 y si hemos elegido la opción 
			* de "aprobados" en la cual le damos el valor 1 a la variable "v", entonces serán aprobadas 
			* y se mostrarán
			*/
			if (v == 1 && (nota > 4 && nota < 11)) 
			{
				for (int j = 0; j < notas.length; j++) 
				{
					%><td><%=notas[j]%></td><%
				
				}
			} 
			/*
			* En este primer if comparamos si las notas están entre 0 y 4 y si hemos elegido la opción 
			* de "suspendidos" en la cual le damos el valor 2 a la variable "v", entonces serán suspensas 
			* y se mostrarán
			*/
			else if (v == 2 && (nota < 5 && nota >= 0)) 
			{
				for (int j = 0; j < notas.length; j++) 
				{
					%><td><%=notas[j]%></td><%
			
				}
			}
			%>
		</tr>
		<%
		contador++;
		}
		%>


	</table>
	<p>
		<a href="notas_v2.jsp">Volver:</a>
	</p>
</body>
</html>