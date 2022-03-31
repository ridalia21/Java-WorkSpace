<%@page import="javax.swing.text.Document"%>
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
	
	<form action="" method="post">
		<h2>Completa la letra que falta del verbo en infinitivo</h2>
		<%
			JuegosClass p = new JuegosClass();
			
		%>
		<h3>Escriba la letra que falta</h3>
		<p>
			La palabra es: <%=p.sacarPalabra() %>
		</p>
		<p>
			La letra que falta es <input type="text" name="sol" pattern="[A-Za-z]" maxlength="1" style="width: 40px" />
		</p>
		<input type="hidden" name="palEnt" value="<%=p.getPalabra() %>">
		<input type="hidden" name="letraSolu" value="<%=p.getLetra() %>">
		<input type="submit" name="corregir" value="Corregir">
	</form>	
	<% 
	String letraSol = request.getParameter("letraSolu");
	String solu = request.getParameter("sol");
	if (solu != null && letraSol != null) {
		if (solu.equalsIgnoreCase(letraSol)) {
			%>
			<h3>Has acertado!!</h3>
			<%
		} else {
			%>
			<h3>La letra introducida no es correcta :(</h3>
			<%
		}
	}
	%>
	<p>
		<a href="MenuJuegos.jsp">Volver a jugar</a>
	</p>
</body>
</html>