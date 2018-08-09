package br.com.treinaweb.jee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import br.com.treinaweb.jee.models.Usuario;
import br.com.treinaweb.jee.utils.ConexaoUtils;

public class UsuarioDAO {

	public static Usuario autenticar(String usr_login, String usr_senha)
			throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		Connection conn = ConexaoUtils.criarConexao();
		Usuario usuario = null;
		PreparedStatement statement = conn.prepareStatement("SELECT * FROM usuarios WHERE usr_login = ? AND usr_senha = ?");
		statement.setString(1, usr_login);
		statement.setString(2, usr_senha);
		ResultSet rs = statement.executeQuery();
		if (rs.next()) {
			usuario = new Usuario();
			usuario.setId(rs.getInt("usr_id"));
			usuario.setNome(rs.getString("nome"));
			usuario.setNomeUsuario(rs.getString("usr_login"));
			usuario.setSenha(rs.getString("usr_senha"));
		}
		ConexaoUtils.fecharConexao(conn);
		statement.close();
		return usuario;
	}
}