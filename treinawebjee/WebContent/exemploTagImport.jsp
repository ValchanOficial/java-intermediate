<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>TAG Import</title>
	</head>
	<body>
		<c:import url="menu.jsp">
			<c:param name="nomeUsuario" value="Jose"></c:param>
		</c:import>
		<h2>Essa � a minha p�gina</h2>
	</body>
</html>