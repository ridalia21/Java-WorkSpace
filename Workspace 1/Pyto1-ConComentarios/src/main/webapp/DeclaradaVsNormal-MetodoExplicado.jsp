<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html><%@ page import="java.util.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- Esto quiere decir que lo que haya dentro será estático ==> <%! %> --%>
	<%!int cont = 0;

	/* 
	* Método que crea un array de 6 posiciones con números aleatorios sin que se repitan
	*/
	public int[] tirada() {
		int miarray[] = new int[6];
		for (int i = 0; i < miarray.length; i++) 
		{
			miarray[i] = (int) (Math.random() * 50 + 1);
			/*
			* En el primer caso en el que i = 0 y j = 0, como la condición del segundo for 
			* no se cumple, la iteración no empieza y el for de i pasa a tener i = 1, 
			* entonces como j = 0 < i = 1, la iteración se realizará una vez porque la 
			* condición se cumple
			*/
			for (int j = 0; j < i; j++) //Comprueba todas las posicoines desde 0 hasta i-1
			{
				if (miarray[i] == miarray[j]) 
				{
					i--; //Hace que vuelva a generar miarray[i] y no miarray[i+1]
					break;
				} 
			}
		}
		return miarray;
	}%>
	<%
	int[] ar = tirada();
	int v = 0;
	for (int i = 0; i < ar.length; i++) {
		v = ar[i];
		out.print(v + " ");
	}
	%>
	<%
	int contador = 0;
	%>
	<p>Bienvenido a mi página</p>
	<%
	cont++;
	contador++;
	%>
	<p>
		número de visitas
		<%=cont%>
		con variable declarada
	</p>
	<p>
		número de visitas
		<%=contador%>
		con variable normal
	</p>

</body>
</html>