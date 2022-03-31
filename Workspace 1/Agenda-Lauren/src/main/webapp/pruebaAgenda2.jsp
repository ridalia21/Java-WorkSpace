<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="fichero.*,java.util.ArrayList"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		tr.azul 
		{
			background-color: #ccffff;
		}
		
		tr.naranja 
		{
			background-color: #ffe0b3;
		}
	</style>
</head>
<body>
	<form action="verContactos2.jsp" method="post">
		<p>Buscar contacto por:</p>
		<select name="opcionSelect">
			<option value="0">Nombre</option>
			<option value="1">Email</option>
			<option value="2">Telefono</option>
		</select> <input type="text" required name="texto" /> 
		<input type="submit" name="enviarBuscar" value="Buscar Contacto" /> 
		<input type="submit" name="enviarBorrar" value="Borrar Contacto" />
	</form>
	<%
	Archivo archivo1 = new Archivo("D:\\Workspace 1\\Agenda-Lauren\\src\\main\\webapp\\agenda");
	ArrayList<String> fichero = archivo1.leerFichero();
	/*
	* En la siguiente línea se crea un ArrayList de tipo contacto para guardar objetos de la clase contacto
	*/
	ArrayList<Contacto> listacontactos = new ArrayList<Contacto>();
	/*
	* Con el siguiente for se obtiene cada valor separado por el caracter separador de cada línea
	* y luego este  se usará independientemente con el constructor de la clase Contacto para agregar
	* objetos Contacto con información al ArrayList de contactos
	*/
	for (int i = 0; i < fichero.size(); i++) {
		String[] lineapartida = fichero.get(i).split(":");
		listacontactos.add(new Contacto(lineapartida[0], lineapartida[1], lineapartida[2]));
	}
	%>
	<table style="border: 1px solid #000;">
		<tr class="azul">
			<td>Nombre:</td>
			<td>Emails:</td>
			<td>Telefono:</td>
		</tr>
		<%
		/*
		* Luego en este for se crearán el resto de filas que hagan falta rellenándose con los
		* datos de cada objeto del arraylist de contactos creado anteriormente y luego usando
		* los métodos get de la clase Contacto
		*/
		String miColor = "azul";
		for (int i = 0; i < listacontactos.size(); i++) {
			if (i % 2 == 0) {//la linea es par
				miColor = "naranja";
			} else {
				miColor = "azul";
			}
		%><tr class="<%=miColor%>">
			<td>
				<%
				out.print(listacontactos.get(i).getNombre());
				/*
				* Usando listacontactos.get(i) se obtiene el objeto de tipo Contacto que esté en 
				* la posición i y luego, como es un objeto de la clase Contacto, se pueden usar
				* los métodos correspondientes de la clase
				*/
				%>
			</td>
			<td>
				<%
				out.print(listacontactos.get(i).getMail());
				%>
			</td>
			<td>
				<%
				out.print(listacontactos.get(i).getTelefono());
				%>
			</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>