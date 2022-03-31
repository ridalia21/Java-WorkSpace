package controlador;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Dao;
import modelo.Especialidades;

/**
 * Servlet implementation class crud
 */
@WebServlet("/crud")
public class crud extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int id;
	private String nombre;
	private int horas;
	private String nivel;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int accion = Integer.parseInt(request.getParameter("accion"));
		String error = "";
		Dao d;
		nombre = request.getParameter("nombre");
		switch(accion) {
		case 1:
			if(nombre.trim().isEmpty()) {
				error = "Datos incompletos";
				request.setAttribute("error", error);
			}else {
				d = new Dao("instituto");
				horas = Integer.parseInt(request.getParameter("horas"));
				nivel = request.getParameter("nivel");
				try {
					error = d.insertar(new Especialidades(-1,nombre,horas,nivel));
					request.setAttribute("error", error);
				} catch (SQLException e1) {
					error = e1.getMessage();
					request.setAttribute("error", error);
				}
			}
			request.getRequestDispatcher("alta.jsp").forward(request, response);
			break;
		case 2:
			String campoB = request.getParameter("campo");
			String datoB = request.getParameter("datos");
			d = new Dao("instituto");
			try {
				error = d.borrar(campoB, datoB);
				request.setAttribute("error", error);
			} catch (SQLException e1) {
				error = e1.getMessage();
				request.setAttribute("error", error);
			}
			request.getRequestDispatcher("bajas.jsp").forward(request, response);
			break;
		case 3:
			String ident = request.getParameter("ident");
			d = new Dao("instituto");
			try {
				ArrayList<Especialidades> reg = d.buscar("id", ident);
				error = "Sin errores";
				request.setAttribute("reg", reg);
			} catch (SQLException e) {
				error = e.getMessage();
			}
			request.setAttribute("error", error);
			request.getRequestDispatcher("vistaModificar.jsp").forward(request, response);
			break;
		case 4:
			String campo = request.getParameter("campo");
			String dato = request.getParameter("datos");
			d = new Dao("instituto");
			try {
				ArrayList<Especialidades> listaR = d.buscar(campo, dato);
				error = "Sin errores";
				request.setAttribute("listaResul", listaR);
			} catch (SQLException e) {
				error = e.getMessage();
			}
			request.setAttribute("error", error);
			request.getRequestDispatcher("vistaBuscar.jsp").forward(request, response);
			break;
		case 5:
			if(nombre.trim().isEmpty()) {
				error = "Datos incompletos";
				request.setAttribute("error", error);
			}else {
				d = new Dao("instituto");
				horas = Integer.parseInt(request.getParameter("horas"));
				nivel = request.getParameter("nivel");
				id = Integer.parseInt(request.getParameter("identificador"));
				Especialidades es = new Especialidades(id, nombre, horas, nivel);
				try {
					error = d.modificar(es);
					request.setAttribute("error", error);
				} catch (SQLException e1) {
					error = e1.getMessage();
					request.setAttribute("error", error);
				}
			}
			request.getRequestDispatcher("modificar.jsp").forward(request, response);
			break;
		}
	}

}
