package modelo;

public class Usuario { // coincide con lo que hay en la tabla de mi BD
	private String login;
	private String clave;
	private String dni;
	private String tipo;

	// tengo que hacerme dos constructores porque al inicio no tengo dni y tipo,
	// luego
	// los cogere de otro lado

	public Usuario(String login, String clave) {
		this.login = login;
		this.clave = clave;
	}

	public Usuario(String login, String clave, String dni, String tipo) {
		this.login = login;
		this.clave = clave;
		this.dni = dni;
		this.tipo = tipo;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getClave() {
		return clave;
	}

	@Override
	public String toString() {
		return "Usuario [login=" + login + ", clave=" + clave + ", dni=" + dni + ", tipo=" + tipo + "]";
	}
	
	

}
