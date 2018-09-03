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
	        <input type="hidden" name="id" value='${sessionScope["categoria"].id}'/>
	        <input type="hidden" name="acao" value="editar"/>
	        <label>Nome da Categoria</label> 
	        <input type="text" name="nome" value='${sessionScope["categoria"].nome}'/> 
	        <input type="submit" value="Editar categoria" />
		</form>
	</body>
</html>