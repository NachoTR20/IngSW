public class DNI {
    private long numeros;
    private char letra;



    // Constructores
    public DNI() {
    }

    public DNI(long numeros, char letra) {
        this.numeros = numeros;
        this.letra = letra;
    }



    // Getters & Setters
    public long getNumeros() {
        return numeros;
    }

    public void setNumeros(long numeros) {
        this.numeros = numeros;
    }

    public char getLetra() {
        return letra;
    }

    public void setLetra(char letra) {
        this.letra = letra;
    }



    // Comprueba si el DNI es correcto
    public boolean dniCorrecto() {
        boolean res = false;

        int resto = (int) (numeros % 23);
        char[] letras = {'T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E'};

        if (letras[resto] == this.letra)
            res = true;

        return res;
    }
}
