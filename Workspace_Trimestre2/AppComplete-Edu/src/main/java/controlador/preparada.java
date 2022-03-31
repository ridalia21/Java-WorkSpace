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

@WebServlet("/preparada")
public class preparada extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String carrera;
	private int nota;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		carrera = request.getParameter("carrera");
		nota = Integer.parseInt(request.getParameter("nota"));
		DaoUniversitario d = new DaoUniversitario("alumno");
		try {
			ArrayList<Universitario> l = (ArrayList<Universitario>) d.buscarPorEspNota(carrera, nota);
			request.setAttribute("lista", l);
			request.getRequestDispatcher("pruebaInyeccion2.jsp").forward(request, response);
		} catch (SQLException e) {
			String error = e.getMessage();
			request.setAttribute("error", error);
		}
	}
}
