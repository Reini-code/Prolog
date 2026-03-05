class Persona {

    String nombre;
    int edad;

    void saludar(){
        System.out.println("Hola, mi nombre es " + nombre + " y tengo " + edad + " años.");
    }

}

public class Main {

    public static void main(String[] args) {

        Persona p1 = new Persona();

        p1.nombre = "Carlos";
        p1.edad = 20;

        p1.saludar();

    }

}