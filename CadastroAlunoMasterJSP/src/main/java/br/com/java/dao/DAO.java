package br.com.java.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {
	
	public Connection getConexao() {
		Connection conexao = null;
		String driver = "com.mysql.cj.jdbc.Driver";
		String usuario = "root";
		String senha = "root";
		String nomeBancoDados = "jdbc:mysql://localhost:3306/dbcadastroalunomaster?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false";
 
		try {
			Class.forName(driver);
			conexao = DriverManager.getConnection(nomeBancoDados, usuario, senha);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conexao;
	}

}
