package utilidades;

public class Util {
	public static String seleccion(String valor) {
		String salida = "";
		String [] posibles = {"basico", "medio", "superior"};
		for(int i = 0; i < posibles.length;i++) {
			if(posibles[i].equals(valor)) {
				salida += "<option selected>"+posibles[i]+"</option>"; 
			}else {
				salida += "<option>"+posibles[i]+"</option>"; 
			}
		}
		return salida;
	}
}
