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
	String[] misFotos = directorio.devuelveArchivosDirectorio(); 
	/*
	 * Al usar esta función, el array misFotos se llena con los nombres de los archivos del directorio
	 */
	String[] valorCartaJugador;
	String[] valorCartaBanca;
	if (misFotos != null) 
	{
		String rutJugador = request.getContextPath() + "\\imagenes";
		int numBanca = (int) (Math.random() * misFotos.length);
		int numJugador;
		/*
		* Este do while() se hace para la situación en la que salga el mismo número 
		* para las dos cartas, en cuyo caso se vuelve a repetir la tirada para que
		* salga uno diferente
		*/
		do 
		{
			numJugador = (int) (Math.random() * misFotos.length);
		}
		while (numBanca == numJugador);
		//En esta dos lineas siguientes se asigna la ruta para la carta de la banca 
		//y la del jugador
		String rutBanca = rutJugador + "\\" + misFotos[numBanca];
		rutJugador += "\\" + misFotos[numJugador];
		/*
		Esto es pa depurar:
			System.out.println(rutJugador);
			System.out.println(rutBanca);
			System.out.println(misFotos[numJugador]);
			System.out.println(misFotos[numBanca]);
		*/
		/*
		* Estas dos lineas están para dividir el nombre de cada imagen por los guines que tienen
		* y filtrarlas posteriormente para saber cual ha ganado, jugador o banca
		*/
		valorCartaJugador = misFotos[numJugador].split("-");
		valorCartaBanca = misFotos[numBanca].split("-");
		%>
	<p>
	Carta del jugador
		<img src="<%=rutJugador%>" alt="foto">
	</p>
	
	<p>
	Carta de la banca
		<img alt="foto" src="<%=rutBanca %>">
	</p>
	<%
		if (Archivo.devuelveValor(valorCartaJugador[0]) <= Archivo.devuelveValor(valorCartaBanca[0])) {
			%><h2>La banca ha ganado!!</h2><% 
		} else {
			%><h2>El jugador ha ganado!!</h2><%
		}
	}
	%>
</body>
</html>