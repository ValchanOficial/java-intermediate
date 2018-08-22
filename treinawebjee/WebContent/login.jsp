<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset='UTF-8'">
		<title>Login</title>
	</head>
<body>
	<fieldset style="width:200px; border:4px solid;">
		<legend><fmt:message key="recurso.saudacao"/></legend>
		<%
			request.getSession().setAttribute("forward", "login");
		%>
		<form action="forward.jsp" method="post" >
		<div style="font-weight: bold"><fmt:message key="recurso.nomeUsuario"/></div>
		<div><input type="text" name="usr_login" /></div>
		<div style="font-weight: bold"><fmt:message key="recurso.senha"/></div>
		<div><input type="password" name="usr_senha" /></div>
		<div><input type="submit" value="Fazer login" /></div>
		<hr>
		<jsp:useBean id="data" class="java.util.Date"></jsp:useBean>
		<fmt:formatNumber value="123" type="currency"></fmt:formatNumber><br>
		<fmt:formatNumber value="123" pattern=".000"></fmt:formatNumber><br>
		<fmt:formatDate value="${data}"/><br>
		<fmt:formatDate value="${data}" pattern="dd/MM/yyyy hh:mm:SS"/><br>
		<fmt:formatDate value="${data}" dateStyle="long" timeStyle="long"/>
		</form>
	</fieldset>
</body>
</html>