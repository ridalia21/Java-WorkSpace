package utilidades;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class ConectarV {
	private Connection conexion =null;
	private String base;
	
	public ConectarV(String base) {
		try{
		   Class.forName("com.mysql.jdbc.Driver");
		}catch (ClassNotFoundException e){
		   e.printStackTrace();
		   System.out.println("no forName");
		}
		this.base = "jdbc:mysql://localhost:3306/"+base;
		try {
			this.conexion = (Connection) DriverManager.getConnection(this.base,"root","");
			System.out.println("conectado");
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("No conectado");
		}
	}
	public Connection getConexion() {
		return conexion;
	}
	
	public void desconectar() throws SQLException {
		this.conexion.close();
	}
	
}
