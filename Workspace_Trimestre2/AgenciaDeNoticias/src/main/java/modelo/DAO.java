package modelo;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import utilidades.ConectarV;

public class DAO {

	private Connection conexion;

	public DAO(String base) {
		ConectarV c = new ConectarV(base);
		this.conexion = c.getConexion();
	}

	private void desconectar() throws SQLException {
		this.conexion.close();
	}

	public Usuario buscar (String campo1, String campo2) throws SQLException { // metodo para buscar datos
		Usuario l = null; // aqui no creamos array porque solo va a haber un usuario con ese login y passwd
		
		// Escribo mi select
		String query = "SELECT * FROM usuario WHERE user='" + campo1 + "' and passw='" + campo2 + "'";
		System.out.println(query);// nos ayuda a ver la sentencia que se ejecuta
		Statement s;
		s = this.conexion.createStatement();
		ResultSet rs = s.executeQuery(query);
		
		if (rs.next()) {// solo un registro, no necesito el while
			l = new Usuario(rs.getString(1), rs.getString(2), rs.getString(3)); // quiero crear un objeto Usuario
		}
		
		rs.close();
		desconectar();
		return l;// devuelve un usuario o null
	}

	/*
	Registrar sin usar la API
	
	public void registrar(String campo1, String campo2, String campo3) throws SQLException {
		String query = "INSERT INTO usuario (user, passw, tipo) VALUES ('" + campo1 + "', '" + campo2 + "', '" + campo3 + "')";
		System.out.println(query);
		Statement s;
		try {
			s = this.conexion.createStatement();
			int filas = s.executeUpdate(query);
			System.out.println(filas);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		desconectar();
	}
	*/
	
	/*
	 Registrar usando la API
	 */
	 public void registrar(String campo1, String campo2, String campo3) throws SQLException {
		String query = "INSERT INTO usuario (user, passw, tipo) VALUES (?, ?, ?)";
		System.out.println(query);
		PreparedStatement s;
		try {
			s = this.conexion.prepareStatement(query);
			s.setString(1, campo1);
			s.setString(2, campo2);
			s.setString(3, campo3);
			int filas = s.executeUpdate();
			System.out.println(filas);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		desconectar();
	}
	
	/*
	Método buscar páginas sin usar la API
	
	public ArrayList<Noticia> buscarPag(int numeroRegPorPg, int numeroDePagina) {
		Noticia u = null;
		ArrayList<Noticia> l = new ArrayList<Noticia>();
		int limiteInf = numeroDePagina * numeroRegPorPg;
		int limiteSup = numeroRegPorPg;
		try {
			String query = "select * from noticias limit " + limiteInf + ", " + limiteSup;
			Statement s = (Statement) conexion.createStatement();
			ResultSet rs = s.executeQuery(query);
			while (rs.next()) {
				u = new Noticia(rs.getString(1), LocalDate.parse(rs.getString(2).toString()), rs.getString(3), rs.getString(4));
				l.add(u);
			}
			rs.close();
			desconectar();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return l;
	}
	*/
	
	/*
	Método buscar páginas usando la API 
	*/
	public ArrayList<Noticia> buscarPag(int numeroRegPorPg, int numeroDePagina) {
		Noticia n = null;
		ArrayList<Noticia> l = new ArrayList<Noticia>();
		int limiteInf = numeroDePagina * numeroRegPorPg;
		int limiteSup = numeroRegPorPg;
		
		try {
			String query = "select * from noticias limit ?, ?";
			
			PreparedStatement s;
			s = this.conexion.prepareStatement(query);
			s.setInt(1, limiteInf);
			s.setInt(2, limiteSup);
			ResultSet rs = s.executeQuery();

			while (rs.next()) {
				n = new Noticia(rs.getString(1), LocalDate.parse(rs.getString(2).toString()), rs.getString(3), rs.getString(4));
				l.add(n);
			}
			rs.close();
			desconectar();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return l;
	}
	
	public int contarTotal() {
		int cuantos = 0;
		try {
			String query = "select count(*) from noticias";
			Statement s = conexion.createStatement();
			ResultSet rs = s.executeQuery(query);
			if (rs.next()) {
				cuantos = rs.getInt(1);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return cuantos;
	}
	
	public int insertarNoticia(Noticia n) throws SQLException {
		int insert;
		String query = "INSERT INTO `noticias` (`titulo`, `fecha`, `usuarioEditor`, `cuerpoNoticia`) VALUES (?, ?, ?, ?);";
		PreparedStatement s = this.conexion.prepareStatement(query);
		s.setString(1, n.getTitulo());
		s.setDate(2, Date.valueOf(n.getFecha()));
		s.setString(3, n.getUsuarioEditor());
		s.setString(4, n.getCuerpo());

		insert = s.executeUpdate();
		s.close();
		desconectar();
		return insert;
	}
	
	public int eliminarNoticia(String titulo) throws SQLException {
		int insert;
		String query = "delete from noticias where titulo=?";
		PreparedStatement s = this.conexion.prepareStatement(query);
		s.setString(1, titulo);
		insert = s.executeUpdate();
		s.close();
		desconectar();
		return insert;
	}
	
	public ArrayList<Noticia> consulta(String campo, String dato) {
		ArrayList<Noticia> l = new ArrayList<Noticia>();
		String sql = "select * from noticias where "+campo+" like ? order by fecha desc";
		try {
			PreparedStatement s = this.conexion.prepareStatement(sql);
			
			s.setString(1, "%"+dato+"%");
			ResultSet rs = s.executeQuery();
			Noticia u;
			while (rs.next()) {
				u = new Noticia(rs.getString(1), LocalDate.parse(rs.getString(2).toString()), rs.getString(3), rs.getString(4));
				l.add(u);
			}
			s.close();
			rs.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return l;
	}
}
