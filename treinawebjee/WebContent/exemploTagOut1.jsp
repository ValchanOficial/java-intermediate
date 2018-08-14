<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>JSTL - TagOut</title>
	</head>
	<body>
		<c:out value="Olá mundo"></c:out>
		<c:out value="${2+2}"></c:out><!-- EL -->
		<form action="exemploTagOut2.jsp">
			<input type="text" name="teste"/>
			<input type="submit" name="Enviar"/>
		</form>
	</body>
</html>