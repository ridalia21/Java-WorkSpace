package controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.*;

@WebServlet("/eliminar")
public class eliminar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String registro;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		registro = request.getParameter("reg");
		String[] noticia = registro.split(":");
		String titulo = noticia[0];
		DAO d = new DAO("agenciadenoticias");
		try {
			d.eliminarNoticia(titulo);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

}
