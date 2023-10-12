package expresscorreos.model;

public class Municipio {

    private String nombre;
    private Provincia provincia;

    public Municipio(String nombre, Provincia provincia) {
        this.nombre = nombre;
        this.provincia = provincia;
    }

    public String getNombre() {
        return nombre;
    }

    public Provincia getProvincia() {
        return provincia;
    }
}
