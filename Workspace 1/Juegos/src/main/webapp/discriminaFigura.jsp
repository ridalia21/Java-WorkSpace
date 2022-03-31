<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.figuras.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String figura = request.getParameter("figura");
	String figuraO = request.getParameter("figuraO");

	//Si quieres hacer formulario reentrante, lo primero que has de hacer es pasar por un if
	//como este los parámetros para que no te de error en ejecución
	if (figura != null && figuraO != null)
	{
		if (figura.equals(figuraO)) 
		{
			out.print("Acertaste");
		} 
		else out.print("Has fallado");
	}
	
	%>
	<form action="" method="post">
		<h2>Discrimina las figuras</h2>
		<%
		Figura.desordenafigura();
		Figura f = new Figura();
		int numFiguras = FigurasCT.figuras[0].length;
		%>
		<h3>
			Selecciona la figura que sea un/a
			<%=f.getFigura()%>
		</h3>
		<%
		//Este for crea los botones con las figuras aleatorias para 
		//seleccionarlas por el jugador
		for (int i = 0; i < numFiguras; i++) {
			Figura f2 = new Figura(i);
			String dato = f2.construirFigura();
		%>
		<button type="submit" name="figura" value="<%=f2.getFigura()%>">
			<%=dato%>
		</button>
		<%
		}
		%>
		<input type="hidden" name="figuraO" value="<%=f.getFigura()%>">
	</form>
	<p>
		<a href="MenuJuegos.jsp">Volver a jugar</a>
	</p>

</body>
</html>