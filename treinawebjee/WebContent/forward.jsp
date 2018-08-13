<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>forward page</title>
	</head>
	<body>
		<jsp:useBean id="usuario" class="br.com.treinaweb.jee.models.Usuario" scope="session">
		</jsp:useBean>
		<jsp:setProperty property="*" name="usuario"/>
		<!-- Expression Language + JavaBeans 
		<jsp:setProperty property="usr_login" name="usuario" value="${param.usr_login}"/>
		<jsp:setProperty property="usr_senha" name="usuario" value="${param.usr_senha}"/>
 		-->
 		<jsp:forward page='<%= request.getSession().getAttribute("forward").toString() %>'></jsp:forward>
	</body>
</html>