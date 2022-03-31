
public class exploraString {

	public static void exploraString(String cadena, String separador) {
		String[] trozos = cadena.split(separador);
		for (int i = 0; i < trozos.length; i++) {
			System.out.println(trozos[i] + " = " + trozos[i].length());
		}
	}
	
	public static void main(String[] args) {
		exploraString("pepe;analista;senior;enero2020\n",";");
	}
}
