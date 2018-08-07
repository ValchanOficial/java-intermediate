<%@page import="java.util.Calendar"%>
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
	<%@include file="menu.jsp"%>
	<fildset style="width: 200px">
	<form method="post" action="infoUsuario.jsp">
		<legend>Informa��es do usu�rio</legend>
		<div style="font-weight: bold">Nome completo:</div>
		<div>
			<input type="text" name="nomeCompleto">
		</div>
		<div style="font-weight: bold">Nome de usu�rio:</div>
		<div>
			<input type="text" name="nomeUsuario">
		</div>
		<div style="font-weight: bold">Senha:</div>
		<div>
			<input type="password" name="senha">
		</div>
		<div>
			<input type="submit" valuer="Enviar" />
		</div>
	</form>
	</fildset>
	<!--  declara��o -->
	<%!public String getDataAtual() {
		return new Date().toString();
	}%>
	<h1>Curso de Java Intermedi�rio</h1>
	<!-- scriptlets -->
	<%
		String mensagem = "";
		mensagem = "Mensagem com o JSP";
		out.println(mensagem);
	%>
	<!-- express�o -->
	<p>
		A data atual �
		<%=getDataAtual()%></p>
	<%
		//executando estuturas de repeti��o em scriptlet
		String tabela = "";
		tabela = "<table>";
		for (int i = 0; i <= 10; i++) {
			int resultado = 2 + i;
			tabela += "<tr>";
			tabela += "	<td>";
			tabela += "2 x " + i + " = ";
			tabela += "	</td>";
			tabela += "	<td>";
			tabela += resultado;
			tabela += "	</td>";
			tabela += "</tr>";
		}
		tabela += "</table>";
		out.println(tabela);
	%>
	<%
		//executando estruturas de decis�o
		Calendar data = Calendar.getInstance();
		int hora = data.get(Calendar.HOUR_OF_DAY);
		if (hora >= 6 && hora <= 12) {
			out.println("Bom dia!!");
		} else if (hora > 12 && hora <= 18) {
			out.println("Boa tarde!!");
		} else if (hora > 18 && hora <= 24) {
			out.println("Boa noite!!");
		} else {
			out.println("Boa madrugada!!");
		}
		//switch
		int mes = data.get(Calendar.MONTH) + 1;
		switch (mes) {
		case 1:
			out.println("� Janeiro.");
			break;
		case 2:
			out.println("� Fevereiro.");
			break;
		case 3:
			out.println("� Mar�o.");
			break;
		case 4:
			out.println("� Abril.");
			break;
		case 5:
			out.println("� Maio.");
			break;
		case 6:
			out.println("� Junho.");
			break;
		case 7:
			out.println("� Julho.");
			break;
		case 8:
			out.println("� Agosto.");
			break;
		case 9:
			out.println("� Setembro.");
			break;
		case 10:
			out.println("� Outubro.");
			break;
		case 11:
			out.println("� Novembro.");
			break;
		case 12:
			out.println("� Dezembro.");
			break;
		}
	%>
</body>
</html>