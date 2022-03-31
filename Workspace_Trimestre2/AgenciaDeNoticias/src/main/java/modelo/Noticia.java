package modelo;

import java.time.LocalDate;

public class Noticia {
	private String titulo;
	private LocalDate fecha;
	private String usuarioEditor;
	private String cuerpo;
	
	public Noticia(String titulo, LocalDate fecha, String usuarioEditor, String cuerpo) {
		this.titulo = titulo;
		this.fecha = fecha;
		this.usuarioEditor = usuarioEditor;
		this.cuerpo = cuerpo;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public LocalDate getFecha() {
		return fecha;
	}

	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}

	public String getUsuarioEditor() {
		return usuarioEditor;
	}

	public void setUsuarioEditor(String usuarioEditor) {
		this.usuarioEditor = usuarioEditor;
	}

	public String getCuerpo() {
		return cuerpo;
	}

	public void setCuerpo(String cuerpo) {
		this.cuerpo = cuerpo;
	}

	public String dameReg() {
		return titulo + ":" + fecha + ":" + usuarioEditor + ":" + cuerpo;
	}
	
	@Override
	public String toString() {
		return "Noticia [titulo=" + titulo + ", fecha=" + fecha + ", usuarioEditor=" + usuarioEditor + ", cuerpo="
				+ cuerpo + "]";
	}
	
	
}
