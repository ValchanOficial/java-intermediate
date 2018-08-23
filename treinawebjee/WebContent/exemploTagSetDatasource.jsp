<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>TAG Set Datasource</title>
	</head>
	<body>
		<sql:setDataSource var="conn" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/tw_java?serverTimezone=UTC&useTimezone=true&serverTimezone=UTC&autoReconnect=true&allowPublicKeyRetrieval=true&useSSL=false" user="root" password="valchan" />
		<sql:query var="linhas" dataSource="${conn}" sql="SELECT usr_id, usr_nome, usr_login FROM usuarios" />
		<table>
			<c:forEach var="usuario" items="${linhas.rows}">
				<tr>
					<td>${usuario.usr_id}</td>
					<td>${usuario.usr_nome}</td>
					<td>${usuario.usr_login}</td>
				</tr>
			</c:forEach>
		</table>
		<form action="exemploTagDataSource2.jsp">
			<table>
				<tr>
					<td>Nome do usuário</td>
					<td><input name="nomeUsuario" type="text"/></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input name="email" type="text"/></td>
				</tr>
				<tr>
					<td>Senha</td>
					<td><input name="senha" type="password"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="Cadastrar"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>