import java.io.File;
import java.io.IOException;

public class CrearArchivo {

    public static void main(String[] args) {

        try {

            File archivo = new File("datos.txt");

            if (archivo.createNewFile()) {
                System.out.println("Archivo creado: " + archivo.getName());
            } else {
                System.out.println("El archivo ya existe.");
            }

        } catch (IOException e) {
            System.out.println("Ocurrió un error.");
            e.printStackTrace();
        }

    }
}