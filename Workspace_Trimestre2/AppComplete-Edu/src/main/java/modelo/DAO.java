package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import utilidades.ConectarV;

public class DAO {

	/*
	 * Esta clase engloba los métodos de las clases DaoUniversitario y DaoUsuario
	 * 
	 *  USAR ESTA CLASE
	 *  HAY QUE ESTAR PENDIENTE DE CAMBIAR LAS LLAMADAS A LOS MÉTODOS EN TODAS LAS DEMÁS CLASES
	 */
	
	private Connection conexion;

	public DAO(String base) {
		ConectarV c = new ConectarV(base);
		this.conexion = c.getConexion();
	}

	private void desconectar() throws SQLException {
		this.conexion.close();
	}

	/*
	 * Aquí usamos la sobrecarga de métodos
	 * RECORDATORIO IMPORTANTE!!
	 * La sobrecarga de métodos solo depende del nombre del método y de su firma, 
	 * es indiferente el tipo de dato que devuelve
	 */
	
	public ArrayList<Universitario> buscar() throws SQLException {
		ArrayList<Universitario> l = new ArrayList<Universitario>();
		Universitario u;
		String query = "select dni,nombre,ape1,ape2,nota from universitario";

		Statement s;
		s = this.conexion.createStatement();
		ResultSet rs = s.executeQuery(query);
		while (rs.next()) {
			u = new Universitario(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
			l.add(u);
		}
		rs.close();
		desconectar();
		return l;
	}

	public Universitario buscar (String dni) throws SQLException {
		//ArrayList<Universitario> l = new ArrayList<Universitario>();

		Universitario u = null;
		String query = "select dni,nombre,ape1,ape2,nota from universitario where dni='" + dni + "'";
		// TERMINAR DESDE AQUI
		// cuidado que no se mezcle sesion alumno y profesor
		Statement s;
		s = this.conexion.createStatement();
		ResultSet rs = s.executeQuery(query);
		while (rs.next()) {
			u = new Universitario(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
			//l.add(u);
		}
		rs.close();
		desconectar();
		return u;
	}

	public Usuario buscar (String campo1, String campo2) throws SQLException { // metodo para buscar datos
		Usuario l = null; // aqui no creamos array porque solo va a haber un usuario con ese login y passwd
		// Escribo mi select
		String query = "SELECT * FROM usuario WHERE login='" + campo1 + "' and clave='" + campo2 + "'";
		System.out.println(query);// nos ayuda a ver la sentencia que se ejecuta
		Statement s;
		s = this.conexion.createStatement();
		ResultSet rs = s.executeQuery(query);
		if (rs.next()) {// solo un registro, no necesito el while
			l = new Usuario(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)); // quiero crear un objeto Usuario
		}
		rs.close();
		desconectar();
		return l;// devuelve un usuario o null
	}
}
