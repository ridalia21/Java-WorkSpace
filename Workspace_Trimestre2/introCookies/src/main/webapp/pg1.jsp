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
<h1>Esta es la página 1</h1>
<form action="pg2.jsp" method="post">
pon tu nombre: <input type="text" name="nombre" required/>
<input type="submit" name="enviar" value="enviar" required/>
</form>
</body>
</html>