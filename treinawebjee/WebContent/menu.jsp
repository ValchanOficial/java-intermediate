<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Menu</title>
	</head>
	<body>
		<%
			String valorCookie = "";
			Cookie[] cookies = request.getCookies();
			for(Cookie c :cookies){
				if(c.getName().equals("_nomeUsuarioConectado")){
					valorCookie = c.getValue();
					break;
				}
			}
		%>
		<a href="http://www.google.com.br">Ir ao Google</a> |
		<a href="http://www.bing.com.br">Ir ao Bing</a> |
		<a href="http://www.yahoo.com.br">Ir ao Yahoo</a>
		Bem vindo, <%= valorCookie %>
		<hr />
	</body>
</html>