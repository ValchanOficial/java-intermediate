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
		<title>JPA - UPDATE and DELETE</title>
	</head>
	<body>
	<%
		TipoProduto tipoProduto = null;
		if(request.getParameter("idTipoProduto")!=null){
			int idTipoProduto = Integer.parseInt(request.getParameter("idTipoProduto"));
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
			EntityManager em = factory.createEntityManager();
			tipoProduto = em.find(TipoProduto.class, idTipoProduto);
			request.getSession().setAttribute("TipoProduto", tipoProduto);
		} else {
			tipoProduto = (TipoProduto) request.getSession().getAttribute("TipoProduto");
		}
	%>
		<fieldset style="width: 500px">
			<form>
				<legend>Edição de tipo de produto</legend>
				<div>Nome do tipo de produto:</div>
				<div><input type="text" name="nomeTipoProduto" value="<%= tipoProduto.getNome() %>"/> </div>
				<div><input type="submit" name="editar" value="Gravar tipo de produto"/></div>
				<div><input type="submit" name="excluir" value="Excluir tipo de produto"/></div>
			</form>
		</fieldset>
		<%
			if(request.getParameter("editar") != null){
				EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
				EntityManager em = factory.createEntityManager();
				tipoProduto = em.merge(tipoProduto); //coloca no controle da JPA
				tipoProduto.setNome(request.getParameter("nomeTipoProduto").toString());
				em.getTransaction().begin();
				em.persist(tipoProduto);
				em.getTransaction().commit();
				em.close();
				request.getSession().removeAttribute("TipoProduto");
				response.sendRedirect("listaTiposProduto.jsp");
			} else if (request.getParameter("excluir")!=null){
				EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
				EntityManager em = factory.createEntityManager();
				tipoProduto = em.merge(tipoProduto); //coloca no controle da JPA
				em.getTransaction().begin();
				em.remove(tipoProduto);
				em.getTransaction().commit();
				em.close();
				request.getSession().removeAttribute("TipoProduto");
				response.sendRedirect("listaTiposProduto.jsp");
			}
		%>
	</body>
</html>