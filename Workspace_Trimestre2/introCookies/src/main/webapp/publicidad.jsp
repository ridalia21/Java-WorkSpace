<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%Cookie[]m1=request.getCookies();
String val=null;
if(m1!=null){
	for(Cookie c:m1){
		if(c.getName().equals("publi")){
			val=(String)c.getValue();
			break;
		}
	}
}
if(val!=null){
	

%>
<p>publicidad</p>
<p><%=val %></p><%} %>
<h1>Buscador de temas</h1>
<ul>
<li><a href="inf.jsp">informatica</a></li>
<li><a href="viajes.jsp">viajes</a></li>
<li><a href="libros.jsp">libros</a></li>
<li><a href="cine.jsp">cine</a></li>

</ul>
<a href="index.jsp">Volver al indice</a>
</body>
</html>