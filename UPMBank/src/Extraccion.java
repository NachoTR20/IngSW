public class Extraccion {
    private double cantidad;

    // Constructor
    public Extraccion(double cantidad) {
        this.cantidad = cantidad;
    }

    // Getters & Setters
    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    // Imprime la extraccion
    public void imprimir() {
        System.out.println("Extraccion de " + this.cantidad + " €");
    }
}