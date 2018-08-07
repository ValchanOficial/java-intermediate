<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Informação do Usuário</title>
	</head>
	<body>
	<%
		out.println(request.getParameter("nomeUsuario"));
		out.println(request.getParameter("senha"));
		String tabela = "<table>";
		Enumeration<String> parametros = request.getParameterNames();
		while(parametros.hasMoreElements()){
			String nomeParametro = parametros.nextElement();
			tabela += "<tr>";
			tabela += "	<td>";
			tabela += nomeParametro;
			tabela += "	</td>";
			tabela += "	<td>";
			tabela += request.getParameter(nomeParametro);
			tabela += "	</td>";
			tabela += "</tr>";
		}
		tabela += "</table>";
		out.println(tabela);
	%>
	</body>
</html>