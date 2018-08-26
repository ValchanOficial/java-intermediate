package br.com.treinaweb.jee.controllers;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import br.com.treinaweb.jee.models.TipoProduto;

@Path("/tipoproduto")
public class TipoProdutoController {
	
	@GET
	@Path("/all")
	@Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})//retorna um JSON ou XML
	public Response getAllTipoProduto() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
		EntityManager em = factory.createEntityManager();
		Query q = em.createQuery("SELECT tp FROM TipoProduto tp");
		List<TipoProduto> tiposProduto = q.getResultList();
		return Response.ok().entity(tiposProduto).build();
	}
	
	@POST
	@Path("/new")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public Response crateTipoProduto(@FormParam("nomeTipoProduto") String nomeTipoProduto) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
		EntityManager em = factory.createEntityManager();
		TipoProduto tp = new TipoProduto();
		tp.setNome(nomeTipoProduto);
		em.getTransaction().begin();
		em.persist(tp);
		em.getTransaction().commit();
		em.close();
		return Response.ok().build();
	}
}