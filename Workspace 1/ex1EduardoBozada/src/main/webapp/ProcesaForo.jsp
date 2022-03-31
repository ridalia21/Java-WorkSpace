<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ex1EduardoBozada.ClaseForo, java.time.*, java.time.temporal.ChronoUnit"%>
<!DOCTYPE html>
<!-- Eduardo Bozada Martín - 15/11/2021 - 8:53 -->
<html>
<head>
<meta charset="UTF-8">
<title>Procesa Foro</title>
</head>
<body>
	<%
	ClaseForo cf1 = new ClaseForo("D:\\Workspace 1\\ex1EduardoBozada\\src\\main\\webapp\\foro.txt");
		
	String lin = request.getParameter("nombre").trim();
	int opt = Integer.parseInt(request.getParameter("perfil"));
	String coment = request.getParameter("coment").trim();
	
		if(lin != null && coment != null) {
			cf1.setComentario(coment);
			cf1.setNombre(lin);
			cf1.setFecha(LocalDateTime.now());
			cf1.setPerf(ClaseForo.perfil[opt]);
			cf1.escribirLinea(cf1.detalle(), true);
			response.sendRedirect("ForoDeOpiniones.jsp");
		}
	%>
	
</body>
</html>