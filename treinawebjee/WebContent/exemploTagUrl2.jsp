<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>TAG url 2</title>
	</head>
	<body>
		<h2>Teste da tag URL feito com sucesso!</h2>
		<c:out value="${param.nome}"></c:out>
		<c:out value="${param.idade}"></c:out>
	</body>
</html>