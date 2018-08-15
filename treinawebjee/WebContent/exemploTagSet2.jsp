<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<c:out value="Antes do remove"></c:out>
		<c:set var="teste" value="${param.teste}"></c:set><!-- recebendo do exemploTagSet1.jsp e adicionando a var teste -->
		<c:out value="${teste}"></c:out>
		<c:out value="Depois do remove"></c:out>
		<c:remove var="teste"/>
		<c:out value="${teste}"></c:out>
	</body>
</html>