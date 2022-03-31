package controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.DAO;
import modelo.*;


@WebServlet("/verPags")
public class verPags extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private int numeroRegPorPg;
	private int numeroDePagina;
	private Usuario u = null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO d = null;
		HttpSession sesion = (HttpSession) request.getSession();
		numeroRegPorPg = (Integer) request.getAttribute("regXpag");
		numeroDePagina = (Integer) request.getAttribute("numDpag");

		if (sesion.getAttribute("usuario") != null) {
			u = (Usuario) sesion.getAttribute("usuario");
		}

		d = new DAO("agenciadenoticias");
		ArrayList<Noticia> l = d.buscarPag(numeroRegPorPg, numeroDePagina);
		d = new DAO("agenciadenoticias");
		int cuantos = d.contarTotal();
		
		request.setAttribute("usuario", u);
		request.setAttribute("numeroRegPorPg", numeroRegPorPg);
		request.setAttribute("numeroDePagina", numeroDePagina);
		request.setAttribute("listaL", l);
		request.setAttribute("cuantos", cuantos);
		request.getRequestDispatcher("noticias.jsp").forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO d = null;
		HttpSession sesion = (HttpSession) request.getSession();
		numeroRegPorPg = 3;
		numeroDePagina = Integer.parseInt(request.getParameter("numeroDePagina"));
		
		if (sesion.getAttribute("usuario") != null) {
			u = (Usuario) sesion.getAttribute("usuario");
		}
		
		d = new DAO("agenciadenoticias");
		ArrayList<Noticia> l = d.buscarPag(numeroRegPorPg, numeroDePagina);
		d = new DAO("agenciadenoticias");
		int cuantos = d.contarTotal();
		request.setAttribute("usuario", u);
		request.setAttribute("numeroRegPorPg", numeroRegPorPg);
		request.setAttribute("numeroDePagina", numeroDePagina);
		request.setAttribute("listaL", l);
		request.setAttribute("cuantos", cuantos);
		request.getRequestDispatcher("noticias.jsp").forward(request, response);
	}

}
