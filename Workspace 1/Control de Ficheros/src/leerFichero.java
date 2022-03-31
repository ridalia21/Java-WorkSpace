import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class leerFichero {

	public static void exploraString(String cadena, String separador) {
		String[] trozos = cadena.split(separador);
		for (int i = 0; i < trozos.length; i++) {
			System.out.println(trozos[i] + " = " + trozos[i].length());
		}
	}
	
	public static void main(String[] args) {
		try {
			File archivo = new File("D:\\fichero1.txt");
			FileReader fr = new FileReader(archivo);
			BufferedReader br = new BufferedReader(fr);

			//exploraString("pepe;analista;senior;enero2020",";");

			String linea;
			while ((linea = br.readLine()) != null) {
				System.out.println(linea);
				if (linea != null) {
					leerFichero.exploraString(linea, ":");
				}
			}

			/*
			 * String linea = br.readLine(); while (linea!=null) {
			 * System.out.println(linea); linea=br.readLine(); }
			 */

			/*
			 * Este while y el anterior hacen lo mismo, solo que el de abajo está más
			 * simplificado
			 */

			fr.close();
		} catch (IOException e) {
			System.out.println("Error E/S: " + e);
		}

	}

}
