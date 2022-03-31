package controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DAO;
import modelo.Noticia;

@WebServlet("/buscaNoticia")
public class buscaNoticia extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String campo;
	private String dato;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		campo = request.getParameter("campo");
		dato = request.getParameter("dato").trim();
		DAO d = new DAO("agenciadenoticias");
		if (dato.isEmpty()) {
			//System.out.println("Aquí1");
			request.getRequestDispatcher("buscarNoticia.jsp").forward(request, response);
		} else {
			ArrayList<Noticia> l = d.consulta(campo, dato);
			//System.out.println("Aquí2");
			request.setAttribute("listaL", l);
			request.getRequestDispatcher("buscarNoticia.jsp").forward(request, response);;
		}
	}

}
