<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vamos verificar a idade</title>
</head>
<body>
	<%@include file="menu.jsp" %>
	<form method="post" action="LerIdade">
		<table>
			<tr>
				<td>Digite sua idade: </td>
				<td><input type="text" name="idade"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Enviar"/></td>
			</tr>
		</table>
	</form>
</body>
</html>