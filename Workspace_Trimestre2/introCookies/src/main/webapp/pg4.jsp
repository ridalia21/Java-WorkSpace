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
String mail=request.getParameter("mail");
if (mail==null || mail.trim().isEmpty()){
	response.sendRedirect("pg3.jsp");
} else{//descargar las cookies
	Cookie[] arrayCookies=request.getCookies();
	if(arrayCookies!=null){
		for(int i=0;i<arrayCookies.length;i++){
			out.print("<p>"+arrayCookies[i].getValue()+"</p>");
		}
	}
}
%>
<%=mail %>
<a href="index.jsp">Volver al indice</a>
</body>
</html>