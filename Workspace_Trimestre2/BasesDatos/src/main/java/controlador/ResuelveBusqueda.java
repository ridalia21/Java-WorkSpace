package controlador;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import com.mysql.jdbc.Connection;

import modelo.Especialidad;
import utilidades.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ResuelveBusqueda")
public class ResuelveBusqueda extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int horas;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hs = request.getParameter("horas");
		try {
			horas = Integer.parseInt(hs);
		} catch (Exception e) {
			request.setAttribute("error", "error en los datos");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		// Empezamos conexion
		ConectarV c = new ConectarV("instituto");
		Connection conexion = c.getConexion();
		String query = "select * from especialidades where horas >=" + horas + " order by horas desc";
		ArrayList<Especialidad> listaR = new ArrayList<Especialidad>();
		try {
			Statement s = conexion.createStatement();
			ResultSet rs = s.executeQuery(query);
			while (rs.next()) {
				int ident = rs.getInt(1);
				String nb = rs.getString(2);
				int h = rs.getInt(3);
				String nv = rs.getString(4);
				Especialidad e = new Especialidad(ident, nb, h, nv);
				listaR.add(e);
			}
			c.desconectar();
			request.setAttribute("lista", listaR);
			request.getRequestDispatcher("vista1.jsp").forward(request, response);
		} catch (Exception e) {
			System.out.println("No se puede ligar una sentencia a la conexión");
			e.printStackTrace();
		}
	}

}
