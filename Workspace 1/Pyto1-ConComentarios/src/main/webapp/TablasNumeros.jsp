<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TablasNumeros</title>
</head>
<body>

<%

/*
* Este programa saca una serie de imágenes cuyo número será el mismo
* al rango que habrá entre dos números que se generan aleatóriamente
* En este caso, las imágenes se podrán repetir
*/

String ruta = request.getContextPath();
String ruta1 = ruta + "/imagenes/img";
	
%>

<%
int n1 = (int)(Math.random()*20)+1;
int n2 = (int)(Math.random()*20)+1;
out.println("N1 = "+n1);
out.println("N2 = "+n2);
%>
<%--
<p><%=n1 %></p>
<p><%=n2 %></p>
--%>

<table border="1">
<tr>
<%
if (n1 > n2) {
	for (int i = n2; i <= n1; i++) {
		int foto = (int)(Math.random()*20)+1;
		String finruta = ruta1 + foto + ".jpg";
		%> <td><img src="<%=finruta %>" width="200px" height="200px"></img></td> 
	<%
	}
	%>
<% 
}else if (n1 < n2) {
	for (int i = n1; i <= n2; i++) {
		int foto = (int)(Math.random()*20)+1;
		String finruta = ruta1 + foto + ".jpg";
		%> <td><img src="<%=finruta %>" width="200px" height="200px"></img></td> 
	<%
	}
	%>
<% 
} else {
	%> <td><%=n1 %></td> 
<%
}
%>
</tr>
</table>

</body>
</html>