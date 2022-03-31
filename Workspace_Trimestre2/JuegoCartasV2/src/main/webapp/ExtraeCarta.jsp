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
	<%
	Archivo directorio = new Archivo("D:\\Workspace_Trimestre2\\JuegoCartasV2\\src\\main\\webapp\\imagenes");
	String[] misFotos = directorio.devuelveArchivosDirectorio();
	if (misFotos != null) {
		String rut = request.getContextPath() + "\\imagenes";
		int num = (int) (Math.random() * misFotos.length);
		rut += "\\" + misFotos[num];
		System.out.println(rut);
	%>
	<p>
		<img src="<%=rut%>" alt="foto">
	</p>
	<%
	}
	%>
</body>
</html>