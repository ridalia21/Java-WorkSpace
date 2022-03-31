package controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DAO;
import modelo.Usuario;
import utilidades.Encriptado;

@WebServlet("/registro")
public class registro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String campo1;
	private String campo2;
	private String campo3;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		campo1 = request.getParameter("login");
		campo2 = Encriptado.getMD5(request.getParameter("clave"));
		campo3 = request.getParameter("tipo");

		String mensaje = "";
		DAO d = new DAO("agenciadenoticias");

		try {
			Usuario u = d.buscar(campo1, campo2); 
			if (u != null) {
				mensaje = "Este usuario ya existe";
				request.setAttribute("mensaje", mensaje);
				request.getRequestDispatcher("registrarse.jsp").forward(request, response);
				
			} else {
				d = new DAO("agenciadenoticias");
				d.registrar(campo1, campo2, campo3);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		} catch (Exception e) {
			mensaje = e.getMessage();
			request.setAttribute("mensaje", mensaje);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}
}