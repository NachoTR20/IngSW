public class Transferencia {
    private CuentaBancaria origen, destino;
    private double cantidad;



    // Constructor
    public Transferencia(CuentaBancaria origen, CuentaBancaria destino, double cantidad) {
        this.origen = origen;
        this.destino = destino;
        this.cantidad = cantidad;
    }



    // Getters & Setters
    public CuentaBancaria getOrigen() {
        return origen;
    }

    public void setOrigen(CuentaBancaria origen) {
        this.origen = origen;
    }

    public CuentaBancaria getDestino() {
        return destino;
    }

    public void setDestino(CuentaBancaria destino) {
        this.destino = destino;
    }

    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }



    // Imprime los datos de la transferencia
    public void imprimir() {
        System.out.println("Transferencia de " + this.cantidad + " € a la cuenta " + this.destino.getNumCuenta());
    }
}