package modelo;

public class Usuario {
	private String user;
	private String passw;
	private String tipo;
	
	public Usuario() {

	}

	public Usuario(String user, String passw, String tipo) {
		this.user = user;
		this.passw = passw;
		this.tipo = tipo;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassw() {
		return passw;
	}

	public void setPassw(String passw) {
		this.passw = passw;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	@Override
	public String toString() {
		return "Usuario [user=" + user + ", passw=" + passw + ", tipo=" + tipo + "]";
	}
	
}
