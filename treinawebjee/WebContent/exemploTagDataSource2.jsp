<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>TAG Datasource</title>
	</head>
	<body>
		<sql:setDataSource var="conn" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/tw_java?serverTimezone=UTC&useTimezone=true&serverTimezone=UTC&autoReconnect=true&allowPublicKeyRetrieval=true&useSSL=false" user="root" password="valchan" />
			<sql:update var="userinsert" dataSource="${conn}" sql="INSERT INTO usuarios (usr_nome, usr_login, usr_senha) VALUES (?, ?, ?)">
			<sql:param value="${param.nomeUsuario}"/>
			<sql:param value="${param.email}"/>
			<sql:param value="${param.senha}"/>
		</sql:update>
		<c:if test="${userinsert > 0 }">
			<c:redirect url="exemploTagSetDatasource.jsp"></c:redirect>
		</c:if>
		<c:if test="${userinsert <= 0 }">
			<c:out value="Houve um erro ao cadastrar o usuário!"/>
		</c:if>
	</body>
</html>