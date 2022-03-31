package utilidades;

import java.sql.DriverManager;
import java.sql.SQLException;
import com.mysql.jdbc.Connection;

public class ConectarViejaFormula {
	private Connection conexion = null;
	private String base;

	public ConectarViejaFormula(String base) {
		try {
			Class.forName("com.mysql.jdbc.Driver");

		} catch (ClassNotFoundException e) {
			// e.printStackTrace();
			System.out.println("No conectado a " + base);
		}
		this.base = "jdbc:mysql://localhost/" + base;
		try {
			this.conexion = (Connection) DriverManager.getConnection(this.base, "root", "");
			System.out.println("Conectado a " + base);
		} catch (SQLException e) {
			// e.printStackTrace();
			System.out.println("No conectado a " + base);
		}

	}

	public Connection getConexion() {
		return conexion;
	}

	public void desconectar() throws SQLException {
		this.conexion.close();
	}

}
