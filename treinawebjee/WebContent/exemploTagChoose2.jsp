<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>TAG Choose, When and Otherwise</title>
	</head>
	<body>
		<c:choose>
			<c:when test="${param.mesNascimento == 1}">
				<c:out value="Você nasceu em Janeiro"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 2}">
				<c:out value="Você nasceu em Fevereiro"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 3}">
				<c:out value="Você nasceu em Março"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 4}">
				<c:out value="Você nasceu em Abril"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 5}">
				<c:out value="Você nasceu em Maio"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 6}">
				<c:out value="Você nasceu em Junho"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 7}">
				<c:out value="Você nasceu em Julho"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 8}">
				<c:out value="Você nasceu em Agosto"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 9}">
				<c:out value="Você nasceu em Setembro"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 10}">
				<c:out value="Você nasceu em Outubro"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 11}">
				<c:out value="Você nasceu em Novembro"></c:out>
			</c:when>
			<c:when test="${param.mesNascimento == 12}">
				<c:out value="Você nasceu em Dezembro"></c:out>
			</c:when>
			<c:otherwise>
					<c:out value="Mês inválido"></c:out>
			</c:otherwise>
		</c:choose>
	</body>
</html>