<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>TAG forTokens</title>
	</head>
	<body>
		<c:set var="cursos" value="Java Básico; Java Intermediário; Java Avançado"></c:set>
		<table style="border: 1px; border-style: solid;">
			<c:forTokens var="curso" items="${cursos}" delims=";">
				<tr>
					<td>
						<c:out value="${curso}"></c:out>
					</td>
				</tr>
			</c:forTokens>
		</table>
	</body>
</html>