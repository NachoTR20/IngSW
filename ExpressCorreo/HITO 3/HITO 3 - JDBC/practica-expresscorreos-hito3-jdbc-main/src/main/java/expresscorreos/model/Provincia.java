package expresscorreos.model;

public class Provincia {

    private String nombre;
    private int CodP;

    public Provincia(String nombre, int codP) {
        this.nombre = nombre;
        CodP = codP;
    }

    public String getNombre() {
        return nombre;
    }

    public int getCodP() {
        return CodP;
    }
}
