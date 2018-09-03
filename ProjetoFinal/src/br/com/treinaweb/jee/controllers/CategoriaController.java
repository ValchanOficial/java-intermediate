package br.com.treinaweb.jee.controllers;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import br.com.treinaweb.jee.dao.CategoriaDao;
import br.com.treinaweb.jee.models.Categoria;

/**
 * Servlet implementation class CategoriaController
 */
@WebServlet(
		name = "CategoriaController",
		urlPatterns = {"/categorias"}
		)
public class CategoriaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoriaController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("acao")!=null && request.getParameter("acao").toString().equals("editar")) {
			int idCategoria = Integer.parseInt(request.getParameter("id"));
			Categoria categoriaASerEditada = CategoriaDao.porId(idCategoria);
			request.getSession().setAttribute("categoria", categoriaASerEditada);
			response.sendRedirect("editarCategoria.jsp");
		} else if(request.getParameter("acao")!=null && request.getParameter("acao").toString().equals("excluir")) {
			int idCategoria = Integer.parseInt(request.getParameter("id"));
			Categoria categoriaASerEditada = CategoriaDao.porId(idCategoria);
			request.getSession().setAttribute("categoria", categoriaASerEditada);
			response.sendRedirect("excluirCategoria.jsp");
		} else  {
			selecionarTodasCategorias(request, response);
		}
	}
	
	private void selecionarTodasCategorias(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		List<Categoria> categorias = CategoriaDao.todos();
		request.getSession().setAttribute("categorias", categorias);
		response.sendRedirect("listarCategorias.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("acao")!=null && request.getParameter("acao").toString().equals("editar")) {
			doPut(request, response);
		} else if(request.getParameter("acao")!=null && request.getParameter("acao").toString().equals("excluir")) {
			doDelete(request, response);
		} else {			
			Categoria novaCategoria = new Categoria();
			try {
				BeanUtils.populate(novaCategoria, request.getParameterMap());
				CategoriaDao.inserir(novaCategoria);
				doGet(request, response);
			} catch (IllegalAccessException | InvocationTargetException e) {
				doGet(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Categoria categoriaASerEditada = new Categoria();
		try {
			BeanUtils.populate(categoriaASerEditada, request.getParameterMap());
			CategoriaDao.atualizar(categoriaASerEditada);
			selecionarTodasCategorias(request, response);
			} catch (IllegalAccessException | InvocationTargetException e) {
			doGet(request, response);
		}
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Categoria categoriaASerExcluida = new Categoria();
		try {
			BeanUtils.populate(categoriaASerExcluida, request.getParameterMap());
			CategoriaDao.excluir(categoriaASerExcluida);
			selecionarTodasCategorias(request, response);
			} catch (IllegalAccessException | InvocationTargetException e) {
			doGet(request, response);
		}
	}
}