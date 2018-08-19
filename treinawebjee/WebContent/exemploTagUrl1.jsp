<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>TAG url</title>
	</head>
	<body>
		<c:url value="exemploTagUrl2.jsp" var="link">
			<c:param name="nome" value="Jose"></c:param>
			<c:param name="idade" value="26"></c:param>
		</c:url>
		<c:out value="${link}"></c:out>
		<a href="${link}">Teste ta TAG url</a>
	</body>
</html>