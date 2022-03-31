<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX</title>
</head>
<body>
	<form method="post" action="BusquedaPag">
		nº de registros por página 
		<input type="number" name="numeroRegPorPg" min="3" required/>
		<input type="hidden" name="numeroDePagina" value="0"/> 
		<input type="submit" value="confirmar" name="enviar">
	</form>
</body>
</html>