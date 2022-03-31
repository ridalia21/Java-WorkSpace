<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- Esto se hace así para importar librerías a un archivo .JSP--%>
<%-- <%@ page import="java.time.*"%> --%>

<html>
<head>
<meta charset="UTF-8">
<title>TablasNumeros2</title>
</head>
<body>

<%
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

/*
* Este programa saca una serie de imágenes cuyo número será el mismo
* al rango que habrá entre dos números que se generan aleatóriamente
* En este caso, las imágenes no se van a repetir
*/

if (n1 > n2) {
	for (int i = n2; i <= n1; i++) {
		String finruta = ruta1 + i + ".jpg";
		%> <td><img src="<%=finruta %>" width="200px" height="200px"></img></td> 
	<%
	}
	%>
<% 
}else if (n1 < n2) {
	for (int i = n1; i <= n2; i++) {
		String finruta = ruta1 + i + ".jpg";
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