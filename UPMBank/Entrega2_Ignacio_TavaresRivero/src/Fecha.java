public class Fecha {
    private int dia, mes, anio;



    // Constructores
    public Fecha() {
    }

    public Fecha(int dia, int mes, int anio) {
        this.dia = dia;
        this.mes = mes;
        this.anio = anio;
    }



    // Getters & Setters
    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int mes) {
        this.mes = mes;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }



    // Comprueba si la fecha es correcta
    public boolean fechaCorrecta() {
        boolean res = false;

        if (anio > 0 && anio <= 2022 - 18) {
            if (mes > 0 && mes <= 12) {
                switch (mes) {
                    case 1:
                    case 3:
                    case 5:
                    case 7:
                    case 8:
                    case 10:
                    case 12:
                        if (dia > 0 && dia < 32)
                            res = true;
                        break;
                    case 2:
                        if ((anio % 4 == 0) && ((anio % 100 != 0) || (anio % 400 == 0))) {
                            if (dia > 0 && dia < 30)
                                res = true;
                        } else {
                            if (dia > 0 && dia < 29)
                                res = true;
                        }
                        break;
                    case 4:
                    case 6:
                    case 9:
                    case 11:
                        if (dia > 0 && dia < 31)
                            res = true;
                        break;
                }
            }
        }

        return res;
    }
}
