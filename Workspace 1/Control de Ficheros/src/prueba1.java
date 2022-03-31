import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class prueba1 {
	public static void main(String[] args) {
		try {
//Abro stream, crea el fichero si no existe
			FileWriter fw = new FileWriter("D:\\fichero1.txt");
//Escribimos en el fichero un String y un caracter 97 (a)
			fw.write("Esto es una prueb");
			fw.write(97);// el carcater a
//Cierro el stream
			fw.close();
//Abro el stream, el fichero debe existir
			FileReader fr = new FileReader("D:\\fichero1.txt");
//Leemos el fichero CARACTER A CARACTER y lo mostramos por pantalla
			int valor = fr.read();
			while (valor != -1) {
				System.out.print((char) valor);
				valor = fr.read();
			}
//Cerramos el stream
			fr.close();
		} catch (IOException e) {
			System.out.println("Error E/S: " + e);
		}
	}
}
