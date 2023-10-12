public class Deposito {
    private double cantidad;

    // Constructor
    public Deposito(double cantidad) {
        this.cantidad = cantidad;
    }

    // Getters & Setters
    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    // Imprime el deposito
    public void imprimir() {
        System.out.println("Deposito de " + this.cantidad + " €");
    }
}