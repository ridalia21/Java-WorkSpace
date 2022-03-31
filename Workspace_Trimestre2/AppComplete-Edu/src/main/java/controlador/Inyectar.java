package controlador;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.*;

@WebServlet("/Inyectar")
public class Inyectar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String dni;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dni = request.getParameter("dni").trim();
		if (dni.isEmpty()) {
			request.setAttribute("error", "Es obligatorio rellenar el campo");
			request.getRequestDispatcher("vistaModi.jsp").forward(request, response);
		} else {
			DaoUsuario d = new DaoUsuario("alumnos");
			try {
				ArrayList<Usuario> l = d.buscarDniAPI(dni);
				request.setAttribute("lista", l);
				request.getRequestDispatcher("despInyeccion.jsp").forward(request, response);
			} catch (SQLException e) {
				String error = e.getMessage();
				request.setAttribute("error", error);
				request.getRequestDispatcher("inyeccion.jsp").forward(request, response);
			}
			
		}
	}

}
