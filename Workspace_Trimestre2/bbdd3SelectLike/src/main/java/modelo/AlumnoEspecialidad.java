package modelo;

public class AlumnoEspecialidad {

	private String dni;
	private String nombre;
	private String apellidos;
	private String mail;
	private String ciclo;

	private int id;
	private String nombreEsp;
	private int horas;
	private String nivel;

	public AlumnoEspecialidad(String dni, String nombre, String apellidos, String mail, String ciclo, int id,
			String nombreEsp, int horas, String nivel) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.mail = mail;
		this.ciclo = ciclo;
		this.id = id;
		this.nombreEsp = nombreEsp;
		this.horas = horas;
		this.nivel = nivel;
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombreEsp() {
		return nombreEsp;
	}

	public void setNombreEsp(String nombreEsp) {
		this.nombreEsp = nombreEsp;
	}

	public int getHoras() {
		return horas;
	}

	public void setHoras(int horas) {
		this.horas = horas;
	}

	public String getNivel() {
		return nivel;
	}

	public void setNivel(String nivel) {
		this.nivel = nivel;
	}

	@Override
	public String toString() {
		return "AlumnoEspecialidad [dni=" + dni + ", nombre=" + nombre + ", apellidos=" + apellidos + ", mail=" + mail
				+ ", ciclo=" + ciclo + ", id=" + id + ", nombreEsp=" + nombreEsp + ", horas=" + horas + ", nivel="
				+ nivel + "]";
	}

}
