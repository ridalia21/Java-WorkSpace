package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;



import utilidades.*;

public class DaoUsuario {

	private Connection conexion;

	public DaoUsuario(String base) {
		ConectarV c = new ConectarV(base);
		this.conexion = c.getConexion();
	}

	private void desconectar() throws SQLException {
		this.conexion.close();
	}

	// los campos son los dos que vienen de nuestro formulario
	public Usuario buscar(String campo1, String campo2) throws SQLException { // metodo para buscar datos
		Usuario l = null; // aqui no creamos array porque solo va a haber un usuario con ese login y
							// passwd
		// Escribo mi select
		String query = "SELECT * FROM usuario WHERE login='" + campo1 + "' and clave='" + campo2 + "'";
		System.out.println(query);// nos ayuda a ver la sentencia que se ejecuta
		Statement s;
		s = this.conexion.createStatement();
		ResultSet rs = s.executeQuery(query);
		if (rs.next()) {// solo un registro, no necesito el while
			l = new Usuario(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)); // quiero crear un
																									// objeto Usuario

		}
		rs.close();
		desconectar();
		return l;// devuelve un usuario o null
	}
	
	public ArrayList<Usuario> buscarDni (String dni) throws SQLException {
		Usuario u = null;
		ArrayList<Usuario> l = new ArrayList<Usuario>();
		String query = "select * from usuario where dni = '"+dni+"'";
		System.out.println(query);
		Statement s;
		s = this.conexion.createStatement();
		ResultSet rs = s.executeQuery(query);
		while (rs.next()) {
			u = new Usuario(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
			l.add(u);
		}
		rs.close();
		desconectar();
		return l;
	}
	
	public ArrayList<Usuario> buscarDniAPI (String dni) throws SQLException {
		Usuario u = null;
		ArrayList<Usuario> l = new ArrayList<Usuario>();
		
		String query = "select * from usuario where dni =?";
		System.out.println(query);
		
		//Preparar plan de ejecución para la sentencia 
		PreparedStatement sentencia = conexion.prepareStatement(query);
		
		//Aquí se ligan los datos, se va a cambiar la interrogación de la sentencia por, en este caso, el valor de "dni"
		sentencia.setString(1, dni);
		
		/*
		 * Creando un objeto ResultSet, vamos a guardar la ejecución de la consulta en este objeto para más
		 * tarde, extraer del mismo los datos de la tabla independientemente según la posición de su campo 
		 * en la tabla
		 */
		ResultSet rs = sentencia.executeQuery();
		
		while (rs.next()) {
			u = new Usuario(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
			l.add(u);
		}
		sentencia.close();
		rs.close();
		desconectar();
		return l;
	}
}
