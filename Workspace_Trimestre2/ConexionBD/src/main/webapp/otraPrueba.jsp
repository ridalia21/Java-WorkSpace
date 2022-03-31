<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="modelo.*,java.sql.*,java.util.*,com.mysql.jdbc.Statement,java.sql.ResultSet"  %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
conecta c=new conecta("prueba");
Connection con=c.getConexion();
String sql = "SELECT nombre FROM universitario"; 
Statement s = (Statement) con.createStatement();
ResultSet res = s.executeQuery (sql);
while (res.next()) {
	
	String nombre =res.getString("nombre");
	out.print("<p>"+nombre+"</p>");
}
res.close();
%>
</body>
</html>