package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conecta {
	private Connection conexion = null;
	private String base;

	public conecta(String base) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			this.base = "jdbc:mysql://localhost/" + base;
			this.conexion = DriverManager.getConnection("jdbc:mysql://localhost/" + base, "root", "");
			System.out.println("conexion conseguida");
		} catch (Exception e) {
			System.out.println("error en la conexion");
		}
	}

	public Connection getConexion() {
		return conexion;
	}

	public void desconectar() throws SQLException {
		this.conexion.close();
	}

}