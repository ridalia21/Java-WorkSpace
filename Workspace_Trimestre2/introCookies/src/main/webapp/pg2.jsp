<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	Cookie[] arrayCookies=request.getCookies();
	if(arrayCookies!=null){
		for(int i=0;i<arrayCookies.length;i++){
			out.print("<p>"+arrayCookies[i].getValue()+"</p>");
		}
	}

%>
<h1>Esta es la página 2</h1>
<%
String nombre=request.getParameter("nombre");
if (nombre==null || nombre.trim().isEmpty()){
	response.sendRedirect("pg1.jsp");
} else{//conservar el dato
	Cookie miCookie=new Cookie("nombre",nombre);
response.addCookie(miCookie);
}
%>
<form action="pg3.jsp" method="post">
pon tu nombre: <input type="text" name="tf" required/>
<input type="submit" name="enviar" value="enviar" required/>
</form>
</body>
</html>