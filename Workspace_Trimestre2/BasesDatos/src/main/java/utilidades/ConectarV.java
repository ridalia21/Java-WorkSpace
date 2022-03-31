package utilidades;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
public class ConectarV { //forma Vieja para Java EE 7, 8
	
		private Connection conexion = null;
		private String base; //base de datos
		public ConectarV(String base){
				try
				{
				   Class.forName("com.mysql.jdbc.Driver");
				   
				} catch (ClassNotFoundException e)
				{
				   e.printStackTrace();
				}
				 this.base="jdbc:mysql://localhost/"+base;
				 
				 try {//DriverManager.getConnection (basedatos, nombreUsuario, clave)
				 this.conexion = (Connection) DriverManager.getConnection (this.base,"root", "");
				 System.out.println("Conectado ");
				 }catch(SQLException e) {
					 e.printStackTrace();
					 System.out.println("No conectado ");
				 }
		}
		
		public Connection getConexion() {
			return conexion;
		}
		public void desconectar() throws SQLException {
			this.conexion.close();
		}
		
		
	}


