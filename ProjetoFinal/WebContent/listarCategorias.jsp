<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Listagem de Categorias</title>
	</head>
	<body>
		<h2>Listagem de Categorias</h2>
		<a href="criarCategoria.jsp">Criar nova categoria</a>
		<br><br>
		<table>
		<thead>
			<tr>
				<td>Id da Categoria</td>
				<td>Nome da Categoria</td>
				<td></td>
				<td></td>
				
			</tr>
		</thead>
			<tbody>
				<c:forEach var="categoria" items='${sessionScope["categorias"]}'>
					<tr>
						<td>${categoria.id}</td>
						<td>${categoria.nome}</td>
						<td><c:url value="categorias" var="linkEditar">
							<c:param name="acao" value="editar"></c:param>
							<c:param name="id" value="${categoria.id}"></c:param>
							</c:url><a href="${linkEditar}">Editar</a> | 
							<c:url value="categorias" var="linkExcluir">
							<c:param name="acao" value="excluir"></c:param>
							<c:param name="id" value="${categoria.id}"></c:param>
							<c:param name="nome" value="${categoria.nome}"></c:param>
							</c:url><a href="${linkExcluir}">Excluir</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>