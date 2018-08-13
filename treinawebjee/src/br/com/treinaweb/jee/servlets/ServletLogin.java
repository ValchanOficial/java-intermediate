package br.com.treinaweb.jee.servlets;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.treinaweb.jee.dao.UsuarioDAO;
import br.com.treinaweb.jee.models.Usuario;

/**
 * Servlet implementation class ServletLogin
 */
@WebServlet(name = "ServletLogin", urlPatterns = { "/login" })
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext contexto;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletLogin() {
		super();
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		contexto = config.getServletContext();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*String usr_login = request.getParameter("usr_login");
		String usr_senha = request.getParameter("usr_senha");
		Usuario usuario;*/
		Usuario usuario = (Usuario)request.getSession().getAttribute("usuario");
		try {
			usuario = UsuarioDAO.autenticar(usuario.getusr_login(), usuario.getusr_senha());
			if(usuario!=null) {
			contexto.setAttribute("usuarioLogado", usuario);
			Cookie cookie = new Cookie("_nomeUsuarioConectado",usuario.getNome());
			cookie.setMaxAge(60*60);//1h
			response.addCookie(cookie);
			request.getSession().setAttribute("_usuario_", usuario);
			//request.getSession().setMaxInactiveInterval(interval);//duração padrão da sessão é 30 minutos
			response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("loginincorreto.jsp");
				}
			} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
				response.sendRedirect("loginincorreto.jsp");
				e.printStackTrace();
		}
	}
}