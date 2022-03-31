package vista;

public class Avion implements Arrancable {

	private String tipo;
	private int motores;
	private int numPasajeros;

	public Avion(String tipo, int motores, int numPasajeros) {
		this.tipo = tipo;
		this.motores = motores;
		this.numPasajeros = numPasajeros;
	}

	@Override
	public String toString() {
		return "Avion [tipo=" + tipo + ", motores=" + motores + ", numPasajeros=" + numPasajeros + "]";
	}

	@Override
	public String arrancar() {
		String salida = "";
		for (int i = 1; i <= motores; i++) {
			salida += "Arrancando motor " + i + "<br/>";
		}
		return salida;
	}

}
