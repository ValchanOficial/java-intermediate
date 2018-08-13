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
		<jsp:forward page='<%= request.getSession().getAttribute("forward").toString() %>'></jsp:forward>
	</body>
</html>