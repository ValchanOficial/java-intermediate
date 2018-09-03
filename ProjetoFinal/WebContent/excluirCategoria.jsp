<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Exclusão de Categoria</title>
	</head>
	<body>
		<form action="categorias" method="post">
			<input type="hidden" name="acao" value="excluir"/>
			<input type="hidden" name="id" value='${sessionScope["categoria"].id}'/>
			<input type="hidden" name="nome" value='${sessionScope["categoria"].nome}'/>
			<p>Tem certeza de que deseja excluir <c:out value='${sessionScope["categoria"].nome}'></c:out>?</p>
			<input type="submit" value="Excluir categoria"/>
		</form>
	</body>
</html>