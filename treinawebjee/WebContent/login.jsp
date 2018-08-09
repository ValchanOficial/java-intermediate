<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login</title>
	</head>
<body>
	<fildset style="width:200px;">
	<form method="post" action="login">
		<legend>Informações de login</legend>
		<div style="font-weight: bold">Nome de usuário</div>
		<div><input type="text" name="usr_login" /></div>
		<div style="font-weight: bold">Senha</div>
		<div><input type="password" name="usr_senha" /></div>
		<div><input type="submit" value="Fazer login" /></div>
	</form>
	</fildset>
</body>
</html>