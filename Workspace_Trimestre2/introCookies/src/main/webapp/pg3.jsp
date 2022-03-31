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
<h1>Esta es la página 3</h1>
<%
String tf=request.getParameter("tf");
if (tf==null || tf.trim().isEmpty()){
	response.sendRedirect("pg2.jsp");
} else{//conservar el dato
	Cookie miCookie=new Cookie("tf",tf);
response.addCookie(miCookie);
}
%>
<form action="pg4.jsp" method="post">
pon tu mail: <input type="text" name="mail" required/>
<input type="submit" name="enviar" value="enviar" required/>
</form>
</body>
</html>