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

@WebServlet("/verNotas")
public class verNotas extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoUniversitario dU = new DaoUniversitario("alumnos");
		try {
			ArrayList<Universitario> l = (ArrayList<Universitario>) dU.buscar();
			request.setAttribute("lista", l);
			request.getRequestDispatcher("verAlumnos.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
