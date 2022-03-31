package controlador;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DAO;
import modelo.Noticia;

@WebServlet("/crearNoticia")
public class crearNoticia extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String titulo;
	private LocalDate fecha;
	private String usuarioEditor;
	private String cuerpoNoticia;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		titulo = request.getParameter("titulo");
		fecha = LocalDate.parse(request.getParameter("fecha"));
		usuarioEditor = request.getParameter("nomEditor");
		cuerpoNoticia = request.getParameter("cuerpoNoti");

		DAO d = new DAO("agenciadenoticias");
		Noticia n = new Noticia(titulo, fecha, usuarioEditor, cuerpoNoticia);
		int modi = 0;
		try {
			modi = d.insertarNoticia(n);
			if (modi > 0) {
				request.setAttribute("valorInsert", modi);
				request.getRequestDispatcher("escribirNoticia.jsp").forward(request, response);
			} else {
				request.setAttribute("error", "No se ha podido agregar la noticia");
				request.getRequestDispatcher("escribirNoticia.jsp").forward(request, response);
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

}
