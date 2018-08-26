<%@page import="javax.persistence.Query"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="br.com.treinaweb.jee.models.TipoProduto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JPA - Lista Tipos Produto</title>
	</head>
	<body>
	<a href="inserirTipoProduto.jsp">Criar novo tipo de produto</a>
		<%
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
			EntityManager em = factory.createEntityManager();
			Query q = em.createQuery("SELECT tp FROM TipoProduto tp");
			@SuppressWarnings("unchecked")
			List<TipoProduto> tiposProduto = q.getResultList();
			out.print("<table>");
			out.print("	<thead>");
			out.print("		<tr>");
			out.print("			<td>");
			out.print("				Id");
			out.print("			</td>");
			out.print("			<td>");
			out.print("				Tipo de produto");
			out.print("			</td>");
			out.print("			<td>");
			out.print("				");
			out.print("			</td>");
			out.print("		</tr>");
			out.print("	</thead>");
			out.print("	<tbody>");
			for(TipoProduto tp : tiposProduto){
				out.print("		<tr>");
				out.print("			<td>");
				out.print("				" + tp.getId());
				out.print("			</td>");
				out.print("			<td>");
				out.print("				" + tp.getNome());
				out.print("			</td>");
				out.print("			<td>");
				out.print("				<a href='editarTipoProduto.jsp?idTipoProduto=" + tp.getId() + "'>Editar</a>");
				out.print("			</td>");
				out.print("		</tr>");
			}
			out.print("	</tbody>");
			out.print("</table>");
		%>
	</body>
</html>