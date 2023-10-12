public class Prestamo {
    private double capital, interesAnual;
    private int anios;



    // Constructor
    public Prestamo(double capital, double interesAnual, int anios) {
        this.capital = capital;
        this.interesAnual = interesAnual;
        this.anios = anios;
    }



    // Getters & Setters
    public double getCapital() {
        return capital;
    }

    public void setCapital(double capital) {
        this.capital = capital;
    }

    public double getInteresAnual() {
        return interesAnual;
    }

    public void setInteresAnual(double interesAnual) {
        this.interesAnual = interesAnual;
    }

    public int getAnios() {
        return anios;
    }

    public void setAnios(int anios) {
        this.anios = anios;
    }



    // Imprime los datos del prestamo
    public void imprimir() {
        System.out.println("Prestamo de " + this.capital + " € durante " + this.anios + " anio/s con un interes anual de " + this.interesAnual);
    }
}