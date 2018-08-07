<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Java EE</title>
	</head>
	<body>
	<!-- diretiva include -->
	<%@include file="menu.jsp" %>
	<!--  declaração -->
	<%!
		public String getDataAtual(){
		return new Date().toString();
	}
	%>
	<h1>Curso de Java Intermediário</h1>
	<!-- scriptlets -->
	<%
		String mensagem = "";
		mensagem = "Mensagem com o JSP";
		out.println(mensagem);
	%>
	<!-- expressão -->
	<p>A data atual é <%=getDataAtual()%></p>
	<%
		//executando estuturas de repetição em scriptlet
		String tabela = "";
		tabela = "<table>";
		for(int i = 0;i<=10;i++){
			int resultado = 2 + i;
			tabela += "<tr>";
			tabela += "	<td>";
			tabela += "2 x "+i+" = ";
			tabela += "	</td>";
			tabela += "	<td>";
			tabela += resultado;
			tabela += "	</td>";
			tabela += "</tr>";
		}
		tabela += "</table>";
		out.println(tabela);
	%>
	</body>
</html>