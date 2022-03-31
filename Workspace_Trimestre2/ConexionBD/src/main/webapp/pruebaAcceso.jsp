<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="modelo.*,java.sql.*,java.util.*,com.mysql.jdbc.Statement,java.sql.ResultSet"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection con = null;
	String sql = "SELECT nombre,ape1,ape2 FROM universitario";
	con = Conectar.conec("alumnos");
	int cont = 0;
	System.out.println("conecta");
	Statement s = (Statement) con.createStatement();
	ResultSet res = s.executeQuery(sql);

	while (res.next()) {

		String nombre = res.getString("nombre");
		String ape1 = res.getString("ape1");
		String ape2 = res.getString("ape2");
		String al = nombre + "," + ape1 + " " + ape2;
		out.print("<p>" + al + "</p>");
	}
	res.close();
	%>
</body>
</html>