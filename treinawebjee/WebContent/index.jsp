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
	<!--  declara��o -->
	<%!
		public String getDataAtual(){
		return new Date().toString();
	}
	%>
	<h1>Curso de Java Intermedi�rio</h1>
	<!-- scriptlets -->
	<%
		String mensagem = "";
		mensagem = "Mensagem com o JSP";
		out.println(mensagem);
	%>
	<!-- express�o -->
	<p>A data atual � <%=getDataAtual()%></p>
	</body>
</html>