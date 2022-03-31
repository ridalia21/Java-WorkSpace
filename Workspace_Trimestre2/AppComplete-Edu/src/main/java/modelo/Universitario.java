package modelo;

public class Universitario {
	private String dni;
	private String nombre;
	private String ape1;
	private String ape2;
	private String carrera;
	private int nota;

	public Universitario(String dni, String nombre, String ape1, String ape2, int nota) {
		this.dni = dni;
		this.nombre = nombre;
		this.ape1 = ape1;
		this.ape2 = ape2;
		this.nota = nota;
	}
	
	public Universitario(String dni, String nombre, String ape1, String ape2, String carrera, int nota) {
		this.dni = dni;
		this.nombre = nombre;
		this.ape1 = ape1;
		this.ape2 = ape2;
		this.carrera = carrera;
		this.nota = nota;
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

	public String getApe1() {
		return ape1;
	}

	public void setApe1(String ape1) {
		this.ape1 = ape1;
	}

	public String getApe2() {
		return ape2;
	}

	public void setApe2(String ape2) {
		this.ape2 = ape2;
	}

	public int getNota() {
		return nota;
	}

	public void setNota(int nota) {
		this.nota = nota;
	}

	@Override
	public String toString() {
		return "Universitario [dni=" + dni + ", nombre=" + nombre + ", ape1=" + ape1 + ", ape2=" + ape2 + ", nota="
				+ nota + "]";
	}

}
