<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:plugin code="TesteApplet.class" codebase="." type="applet">
			<jsp:params>
				<jsp:param value="Olá mundo" name="mensagem"/>
			</jsp:params>
			<jsp:fallback>Não foi possível carregar o applet</jsp:fallback>
		</jsp:plugin>
	</body>
</html>