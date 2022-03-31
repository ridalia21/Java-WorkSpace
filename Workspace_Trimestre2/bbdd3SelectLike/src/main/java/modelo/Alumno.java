package modelo;

public class Alumno {

	private String dni;
	private String nombre;
	private String apellidos;
	private String mail;
	private String ciclo;

	public Alumno(String dni, String nombre, String apellidos, String mail, String ciclo) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.mail = mail;
		this.ciclo = ciclo;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getCiclo() {
		return ciclo;
	}

	public void setCiclo(String ciclo) {
		this.ciclo = ciclo;
	}

	@Override
	public String toString() {
		return "Alumno [dni=" + dni + ", nombre=" + nombre + ", apellidos=" + apellidos + ", mail=" + mail + ", ciclo="
				+ ciclo + "]";
	}

}
