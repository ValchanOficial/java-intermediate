package br.com.treinaweb.jee.servlets;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletLeitorIdade
 */
@WebServlet(
		name ="ServletLeitorIdade",
		urlPatterns = {"/LerIdade"}
		)
public class ServletLeitorIdade extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ServletContext contexto;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLeitorIdade() {
        super();
    }
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		contexto = config.getServletContext();
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idade = Integer.parseInt(request.getParameter("idade"));
		contexto.setAttribute("idadeUsuario", idade);
		response.getWriter().write("<html>");
		response.getWriter().write("	<head>");
		response.getWriter().write("		<title>Verificação da Idade</title>");
		response.getWriter().write("	</head>");
		response.getWriter().write("	<body>");
		response.getWriter().write("	<form method='post' action='ConfirmaIdade'>");
		response.getWriter().write("		  <table>");
		response.getWriter().write("		 	<tr>");
		response.getWriter().write("		  		<td>Confirme sua idade: </td>");
		response.getWriter().write("		  		<td><input type='text' name='idadeConfirmada'/></td>");
		response.getWriter().write("		  	</tr>");		
		response.getWriter().write("		 	<tr>");
		response.getWriter().write("		  		<td colspan='2'><input type='submit' value='Confirmar'/></td>");
		response.getWriter().write("		  	</tr>");
		response.getWriter().write("		  </table>");
		response.getWriter().write("	</form>");
		response.getWriter().write("	</body>");
		response.getWriter().write("</html>");
	}
}