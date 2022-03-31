<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="fichero.*,java.util.ArrayList"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
tr.azul {
	background-color: #ccffff;
}

tr.naranja {
	background-color: #ffe0b3;
}
</style>
</head>
<body>
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
	for (int i = 0; i < fichero.size(); i++) 
	{
		String[] lineapartida = fichero.get(i).split(":");
		listacontactos.add(new Contacto(lineapartida[0], lineapartida[1], lineapartida[2]));
	}
	/*
	* Este ArrayList se crea para usarlo posteriormente para guardar los contactos que sean diferentes al que se ha 
	* introducido en "cajatexto" para sorbeescribir con ello el fichero donde están los contactos pero sin el contacto
	* que se pretendía borrar
	*/
	ArrayList<Contacto> listaGuardarContactos = new ArrayList<Contacto>();
	
	//A este if se entra cuando el botón "Buscar" o el botón "Borrar" se han pulsado
	if (request.getParameter("enviarBuscar") != null || request.getParameter("enviarBorrar") != null) 
	{
		//Este String guarda el contenido del texto introducido para usarlo para comparar más tarde
		String cajatexto = request.getParameter("texto").toLowerCase().trim();
		//Y por último, este int guarda el valor de la opción seleccionada en el select
		int numSelect = Integer.parseInt(request.getParameter("opcionSelect"));
		
		/* 
		* Ahora, si el botón pulsado ha sido "Buscar", entonces se entra a este if donde se crea 
		* otra tabla en la que, según la opción seleccionada, buscará cada contacto a partir de
		* un parámetro diferente
		*/
		if (request.getParameter("enviarBuscar") != null) {
	%>
	<table style="border: 1px solid #000;">
		<tr>
			<td>Nombre:</td>
			<td>Emails:</td>
			<td>Telefono:</td>
		</tr>
		<%
		boolean encontrado = false;
		switch (numSelect) {
		case 0:
			for (int i = 0; i < listacontactos.size(); i++) 
			{
				/*
				* Lo que hace aquí es simplemente comaparar el contenido del textbox en el que se
				* introdujo el nombre en este caso y comparándolo con cada uno de los nombres de
				* los objetos contacto creados, y cuando sea igual, mostrará todos los datos de
				* ese contacto
				*/
				if (cajatexto.equals(listacontactos.get(i).getNombre())) 
				{
					encontrado = true;
					%><tr>
						<td>
							<%
							out.print(listacontactos.get(i).getNombre());
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
			}
			/*
			* En caso de que no lo encuentre, la variable booleana se quedará a false y mostrará en la tabla
			* el mensaje, "no lo he encontrado"
			*/
			if (encontrado == false) 
			{
				%><tr>
					<td>
						<%
						out.print("No se ha encontrado");
						%>
					</td>
				</tr>
				<%
			}
		break;
		
		case 1:
		for (int i = 0; i < listacontactos.size(); i++) 
		{
		/*
		* En este caso la cosa cambia dado que un contacto con 1 nombre puede tener varios mails, de manera que
		* llamamos al método getTodosMails() que nos devuelve un array de String con todos los correos que pueda
		* tener el contacto listacontactos.get(i) y que se guardarán en el String[] emails
		*/
		String[] emails = listacontactos.get(i).getTodosMails();
			/*
			* Con este for y el if que tiene dentro, compararemos el o los correos que tenga cada contacto con el
			* correo que se le ha pasado por parámetro en "cajatexto" y en caso de encontrarlo, mostrará toda la 
			* información del contacto que se esté comparando en el momento
			*/
			for (int z = 0; z < emails.length; z++) 
			{
				if (cajatexto.equals(emails[z])) 
				{
					encontrado = true;
					%><tr>
						<td>
							<%
							out.print(listacontactos.get(i).getNombre());
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
			}
		}
		if (encontrado == false) 
		{
			%><tr>
				<td>
					<%
					out.print("No se ha encontrado");
					%>
				</td>
			</tr>
			<%
		}
		break;
		
		case 2:
		for (int i = 0; i < listacontactos.size(); i++) 
		{
			//Lo que ocurre aquí es lo mismo que con el caso de los correos, la única diferencia es que se usa el método getTodosTelfs()
			String[] telefonos = listacontactos.get(i).getTodosTelfs();
			for (int z = 0; z < telefonos.length; z++) 
			{
				if (cajatexto.equals(telefonos[z])) 
				{
					encontrado = true;
					%><tr>
						<td>
							<%
							out.print(listacontactos.get(i).getNombre());
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
			}
		}
		if (encontrado == false) 
		{
			%><tr>
				<td>
					<%
					out.print("No se ha encontrado");
					%>
				</td>
			</tr>
			<%
		}
		break;
		}
	%>
	</table>
	<%
	} 
	//Lo que ha ocurrido aquí ha sido que se ha pulsado el botón borrar, entonces se ejecuta lo siguiente
	else if (request.getParameter("enviarBorrar") != null) 
	{
	%>
	<table style="border: 1px solid #000;">
		<tr>
			<td>Nombre:</td>
			<td>Emails:</td>
			<td>Telefono:</td>
		</tr>
		<%
		boolean encontrado = false;
		switch (numSelect) {
		/*
		* Se repite el mismo método de búsqueda para econtrar el contacto que se quiere eliminar, y una
		* vez encontrado, se mostrará y en el ArrayList "listaGuardarContactos" se guardarán los datos de los 
		* contactos que sean diferentes al contacto que cumple la condición del if interior, es decir, 
		* lo que haya en el else se ejecutará
		*/
		case 0:
			for (int i = 0; i < listacontactos.size(); i++) 
			{
				if (cajatexto.equals(listacontactos.get(i).getNombre())) 
				{
					encontrado = true;
					%><tr>
						<td>
							<%
							out.print(listacontactos.get(i).getNombre());
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
				else 
				{
					listaGuardarContactos.add(listacontactos.get(i));
				}
			}
			if (encontrado == false) 
			{
				%><tr>
					<td>
						<%
						out.print("No se ha encontrado");
						%>
					</td>
				</tr>
				<%
			}
		break;
		
		/*
		* Lo que ocurre aquí es lo mismo que en el "case 0:", solo que ahora trabajamos con un
		* array de correos en lugar de solo un nombre, de manera que hay que escribir un segundo
		* bucle dentro del que recorre los contactos para que este recorra los correos de cada
		* contacto para comprobarlos
		*/
		case 1:
		for (int i = 0; i < listacontactos.size(); i++) 
		{
		String[] emails = listacontactos.get(i).getTodosMails();
		int cont = 0;
			for (int z = 0; z < emails.length; z++) 
			{
				if (cajatexto.equals(emails[z])) 
				{
					encontrado = true;
					%><tr>
						<td>
							<%
							out.print(listacontactos.get(i).getNombre());
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
				else 
				{
				/*
				* En este else lo que ocurre es que si el correo introducido no coincide con 
				* ninguno de los correos del contacto, se entra a este, se suma 1 a la variable
				* contador el número de veces igual al número de correos que tengan los contactos
				* que sean diferentes al que se quiere eliminar
				
				*/
					cont++;
					if (cont == emails.length) 
					{
						listaGuardarContactos.add(listacontactos.get(i));
					}
				}
			}
		}
		if (encontrado == false) 
		{
			%><tr>
				<td>
					<%
					out.print("No se ha encontrado");
					%>
				</td>
			</tr>
			<%
		}
		break;
		/*
		* Aquí es exáctamente lo mismo que en el case 1:
		*/
		case 2:
		for (int i = 0; i < listacontactos.size(); i++) 
		{
			String[] telefonos = listacontactos.get(i).getTodosTelfs();
			int cont = 0;
			for (int z = 0; z < telefonos.length; z++) 
			{
				if (cajatexto.equals(telefonos[z])) 
				{
					encontrado = true;
					%><tr>
						<td>
							<%
							out.print(listacontactos.get(i).getNombre());
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
				else 
				{
					cont++;
					if (cont == telefonos.length) 
					{
						listaGuardarContactos.add(listacontactos.get(i));
					}
				}
			}
		}
		if (encontrado == false) 
		{
			%><tr>
				<td>
					<%
					out.print("No se ha encontrado");
					%>
				</td>
			</tr>
			<%
		}
		break;
		}
		%>
	</table>
	<%
	/*
	* Ahora, con esta parte del código, lo que haremos será sobrescribir el fichero con los
	* datos de todos los contactos menos del que hemos elegido borrar, ya que ese no se 
	* agregó a listaGuardarContactos
	*/
	boolean primeravez = true;
	/*
	* If (true) solo ocurre si queda un solo contacto que borrar, dado que si solo queda el
	* contacto que se quiere borrar, no se va a guardar nada en listaGuardarContactos, por lo 
	* que si 0 < 1, entonces sobrescribirá el fichero con solo " : : "
	*/
	if (listaGuardarContactos.size() < 1) 
	{
		archivo1.escribirLinea(" : : ", false);
	}
	else 
	{
		for (int i = 0; i < listaGuardarContactos.size(); i++) 
		{
			/*
			* Ahora con este for, la primera vez que se escriba en el archivo, cuando primeravez
			* sea true, al utilizar escribirLinea(cadena, false), se sobrescribirá todo el fichero
			* y se escribirá solo la primera línea, y al escribirse, primeravez pasará a false y
			* las siguientes veces, entrará al else y se escribirán las siguientes líneas a 
			* continuación de la primera
			*/
			if (primeravez) 
			{
				archivo1.escribirLinea(listaGuardarContactos.get(i).detalle(), false);
				primeravez = false;
			} 
			else 
			{
				archivo1.escribirLinea(listaGuardarContactos.get(i).detalle(), true);
			}
		}
	}
	}
	}
	%>
	<p>
		<a href="pruebaAgenda2.jsp">Volver</a>
	</p>

</body>
</html>