package controlador;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

import modelo.*;
import utilidades.ConectarV;

/**
 * Servlet implementation class controladConsulta
 */
public class controladConsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String campoSelect;
	private String consultaLike;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		campoSelect = request.getParameter("campoTabla");
		consultaLike = request.getParameter("consultaTexto");
		System.out.println(campoSelect);
		System.out.println(consultaLike);
		if (!campoSelect.isEmpty() && !consultaLike.trim().isEmpty()) {

			ConectarV c = new ConectarV("instituto"); // nb BBDD
			Connection conexion = c.getConexion();
			ArrayList<AlumnoEspecialidad> listaAl = new ArrayList<AlumnoEspecialidad>();

			String query = "SELECT * FROM alumno,especialidades WHERE Id=idEspecialidad AND " + campoSelect + "";
			if (campoSelect.equals(Select.campoSeleccionado[3])) {
				int h = Integer.parseInt(consultaLike);
				query += " >= " + h + " order by " + campoSelect;
			} else {
				query += " LIKE '%" + consultaLike.toLowerCase() + "%'";
			}
			System.out.println(query);
			try {

				Statement s = (Statement) conexion.createStatement();
				ResultSet rs = s.executeQuery(query);
				while (rs.next()) { // puntero avanza una posicion
					int ident = rs.getInt("id");
					String nbEsp = rs.getString("nombreEsp");
					int hr = rs.getInt("horas");
					String nivel = rs.getString("nivel"); // basico, medio y superior

					String dniA = rs.getString("dni");
					String nombreA = rs.getString("nombre");
					String apellA = rs.getString("aps");
					String mailA = rs.getString("mail");
					String cicloA = rs.getString("idEspecialidad");

					AlumnoEspecialidad alEsp = new AlumnoEspecialidad(dniA, nombreA, apellA, mailA, cicloA, ident, nbEsp, hr, nivel);
					listaAl.add(alEsp);
				}

				c.desconectar();
				request.setAttribute("tablaAlumEspecialidades", listaAl);
				request.getRequestDispatcher("vista1.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("No se puede ligar una sentencia a la conexion");
			}

		} else {
			request.setAttribute("advertencia", "No se han introducido los dos datos");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}