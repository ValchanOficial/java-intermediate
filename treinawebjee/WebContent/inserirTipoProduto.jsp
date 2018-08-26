<%@page import="br.com.treinaweb.jee.models.TipoProduto"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JPA - Insert</title>
	</head>
	<body>
		<fieldset style="width: 500px">
			<form>
				<legend>Inserção de novo tipo de produto</legend>
				<div>Nome do tipo de produto:</div>
				<div><input type="text" name="nomeTipoProduto"/> </div>
				<div><input type="submit" name="incluir" value="Gravar novo tipo de produto"> </div>
			</form>
		</fieldset>
		<%
			if(request.getParameter("incluir") != null){
				EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
				EntityManager em = factory.createEntityManager();
				TipoProduto tipoProduto = new TipoProduto();
				tipoProduto.setNome(request.getParameter("nomeTipoProduto").toString());
				em.getTransaction().begin();
				em.persist(tipoProduto);
				em.getTransaction().commit();
				em.close();
				response.sendRedirect("listaTiposProduto.jsp");
			}
		%>
	</body>
</html>