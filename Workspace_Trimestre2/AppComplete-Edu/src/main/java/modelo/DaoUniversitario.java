package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.mysql.jdbc.Connection;

import utilidades.ConectarV;

public class DaoUniversitario {
	private Connection conexion;

	public DaoUniversitario(String base) {
		ConectarV c = new ConectarV(base);
		this.conexion = c.getConexion();
	}

	private void desconectar() throws SQLException {
		this.conexion.close();
	}

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

	public ArrayList<Universitario> buscar(String dni) throws SQLException {
		ArrayList<Universitario> l = new ArrayList<Universitario>();

		Universitario u;
		String query = "select dni,nombre,ape1,ape2,nota from universitario where dni='" + dni + "'";
		// TERMINAR DESDE AQUI
		// cuidado que no se mezcle sesion alumno y profesor
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
	
	public ArrayList<Universitario> buscarPorEspNota (String esp, int nota) throws SQLException {
		Universitario u = null;
		ArrayList<Universitario> l = new ArrayList<Universitario>();

		try {
			String query = "select * from universitario where carrera =? and nota >= ?";
			PreparedStatement sentencia = conexion.prepareStatement(query);
			sentencia.setString(1, esp);
			sentencia.setInt(2, nota);
			
			ResultSet rs = sentencia.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt(1);
				String dni = rs.getString(2);
				String nombre =  rs.getString(3);
				String ape1 = rs.getString(4);
				String ape2 = rs.getString(5);
				String carrera = rs.getString(6);
				int nt = rs.getInt(7);
				
				u = new Universitario(dni, nombre, ape1, ape2, carrera, nt);
				l.add(u);
			}
			sentencia.close();
			rs.close();
			
		} catch (Exception e) {
			
		}
		desconectar();
		return l;
	}
}
