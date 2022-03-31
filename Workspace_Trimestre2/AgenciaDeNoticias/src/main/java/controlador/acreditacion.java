package controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.DAO;
import modelo.Usuario;
import utilidades.Encriptado;

@WebServlet("/acreditacion")
public class acreditacion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String campo1;
	private String campo2;
	private int regXpag;
	private int numDpag;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		campo1 = request.getParameter("login");
		campo2 = Encriptado.getMD5(request.getParameter("clave"));
		regXpag = Integer.parseInt(request.getParameter("numeroRegPorPg"));
		numDpag = Integer.parseInt(request.getParameter("numeroDePagina"));
		
		String mensaje = "";
		DAO d = new DAO("agenciadenoticias");// pedimos una conexion a la base de datos

		try {
			Usuario u = d.buscar(campo1, campo2); // busca y devuelve el usuario completo
			
			if (u == null) {// no ha encontrado el usuario, no se ha acreditado, no estaba en la tabla
				mensaje = "Tu login o tu clave son incorrectas";
				request.setAttribute("mensaje", mensaje);
				request.getRequestDispatcher("iniciarSesion.jsp").forward(request, response);
				// System.out.println("usuario null");
			} else {
				HttpSession sesion = (HttpSession) request.getSession();

				u.setPassw(null);
				/*
				 * Esta línea anterior pone la clave del objeto usuario creado para que al
				 * cambiar de página la clave no pueda ser rastreada
				 */
				request.setAttribute("regXpag", regXpag);
				request.setAttribute("numDpag", numDpag);
				sesion.setAttribute("usuario", u);
				request.getRequestDispatcher("verPags").forward(request, response);

			}
		} catch (SQLException e) {
			mensaje = e.getMessage();
			request.setAttribute("mensaje", mensaje);
			request.getRequestDispatcher("iniciarSesion.jsp").forward(request, response);

		}
	}
}
