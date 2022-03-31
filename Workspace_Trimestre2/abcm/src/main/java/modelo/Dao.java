package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import utilidades.ConectarV;

public class Dao {
	private Connection conexion;

	public Dao(String conexion) {
		ConectarV c = new ConectarV(conexion);
		this.conexion = c.getConexion();
	}
	
	private void desconectar() throws SQLException {
		this.conexion.close();
	}
	
	public String insertar(Especialidades e) throws SQLException{
		int nreg;
		Statement s;
		String error = "";
		String query = "insert into especialidades values (NULL,'"+e.getNombre()+"',"+e.getHoras();
		query += ", '"+e.getNivel()+"')";
		s = this.conexion.createStatement();
		try {
			nreg=s.executeUpdate(query);
			error = String.valueOf(nreg);
			s.close();
			desconectar();
		} catch (SQLException e1) {
			error = e1.getMessage();
		}
		return error;
		
	}
	
	public ArrayList<Especialidades> buscar(String campo, String valor) throws SQLException{
		ArrayList <Especialidades> l = new ArrayList<Especialidades>();
		int datoEntero;
		Especialidades e;
		String query = "Select * from especialidades where "+campo;
		if(campo.equals("id") || campo.equals("horas")) {
			datoEntero = Integer.parseInt(valor);
			query += " = "+datoEntero+" ";
		}else {
			query += " like '%"+valor+"%' ";
		}
		Statement s;
		s = this.conexion.createStatement();
		ResultSet rs = s.executeQuery(query);
		while(rs.next()) {
			e = new Especialidades(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4));
			l.add(e);
		}
		rs.close();
		desconectar();
		return l;
		
	}

	public String borrar(String campoB, String datoB) throws SQLException {
		int datoEntero;
		int nreg;
		Statement s;
		String error = "";
		String query = "delete from especialidades where "+campoB;
		if(campoB.equals("id") || campoB.equals("horas")) {
			datoEntero = Integer.parseInt(datoB);
			query += " = "+datoEntero+" ";
		}else {
			query += " = '"+datoB+"' ";
		}
		s = this.conexion.createStatement();
		try {
			nreg=s.executeUpdate(query);
			error = String.valueOf(nreg);
			s.close();
			desconectar();
		} catch (SQLException e1) {
			error = e1.getMessage();
		}
		return error;
	}

	public String modificar(Especialidades es) throws SQLException {
		int datoEntero;
		int nreg;
		Statement s;
		String error = "";
		String query = "update especialidades set nombre = '"+es.getNombre()+"', horas = "+es.getHoras();
		query += ", nivel = '"+es.getNivel()+"' where id = "+es.getId()+" ";
		s = this.conexion.createStatement();
		try {
			nreg=s.executeUpdate(query);
			error = String.valueOf(nreg);
			s.close();
			desconectar();
		} catch (SQLException e1) {
			error = e1.getMessage();
		}
		return error;
	}
	
}
