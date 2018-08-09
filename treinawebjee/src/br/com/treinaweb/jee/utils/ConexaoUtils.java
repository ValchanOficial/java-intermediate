package br.com.treinaweb.jee.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoUtils {

	public static Connection criarConexao()
			throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		String stringConexao = "jdbc:mysql://localhost:3306/tw_java?useTimezone=true&serverTimezone=UTC";
		Connection conn = DriverManager.getConnection(stringConexao,"root","valchan");
		return conn;
	}
	
	public static void fecharConexao(Connection conn) throws SQLException {
		if(conn!=null) {
			conn.close();
		}
	}
}