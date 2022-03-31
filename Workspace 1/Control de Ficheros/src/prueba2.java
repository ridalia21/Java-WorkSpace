import java.io.FileWriter;
import java.io.IOException;

public class prueba2 {

	public static void main(String[] args) {
		try {
			// Abro stream, crea el fichero si no existe
			FileWriter fw = new FileWriter("D:\\fichero1.txt");
			// Escribimos en el fichero un String y un caracter 97 (a)
			for (int i = 0; i <= 10; i++) {
				fw.write("Linea "+i+": "+i*2+"\n");			}
			// Cierro el stream
			fw.close();
		} catch (IOException e) {
			System.out.println("Error E/S: " + e);
		}
	}

}
