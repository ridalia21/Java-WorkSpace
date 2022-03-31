<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.figuras.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="procesaColor.jsp" method="post">
		<h2>Discrimina los colores</h2>
		<%
		Figura.desordenaColor();
		Figura f = new Figura(0,(int)(Math.random()*FigurasCT.colores.length));
		int numFiguras = FigurasCT.colores.length;
		%>
		<h3>
			Selecciona la figura que sea un/a
			<%=f.getColor()%>
		</h3>
		<%
		//Este for colorea los botones con las figuras aleatorias para 
		//seleccionarlas por el jugador
		for (int i = 0; i < numFiguras; i++) {
			Figura f2 = new Figura(0,i);
			String dato = f2.colorearFigura();
		%>
		<button type="submit" name="color" value="<%=f2.getColor() %>">
			<%=dato%>
		</button>
		<%
		}
		%> 
		<input type="hidden" name="colorO" value="<%=f.getColor()%>">
	</form>
	<p>
		<a href="MenuJuegos.jsp">Volver a jugar</a>
	</p>
</html>