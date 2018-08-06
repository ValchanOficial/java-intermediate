package br.com.treinaweb.jee.servlets;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServeletExemplo1
 */
@WebServlet(
		name = "ServletExemplo1",
		urlPatterns = {"/SvtEx1"},
		initParams = {
				@WebInitParam(name = "mensagem", value = "Teste de Servlet")
				}
		)
public class ServletExemplo1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String mensagem;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletExemplo1() {
        super();
    }
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		mensagem = config.getInitParameter("mensagem");	
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		response.getWriter().write("<html>");
		response.getWriter().write("	<head>");
		response.getWriter().write("		<title>Teste de Servlet</title>");
		response.getWriter().write("	</head>");
		response.getWriter().write("	<body>");
		response.getWriter().write("		<h1>"+mensagem+"</h1>");
		response.getWriter().write("		<p>Bem vindo "+nome+"</h1>");
		response.getWriter().write("	</body>");
		response.getWriter().write("</html>");
	}
}