import java.io.*;
import java.util.Scanner;

enum TipoCuenta {
    Ahorros, Remunerada, Corriente;
}

public class CuentaBancaria {
    private Cliente cliente;
    private TipoCuenta tipoCuenta;
    private String numCuenta;
    private double dinero;
    private int numD, numE, numT, numP;
    private Deposito[] listaDep;
    private Extraccion[] listaExt;
    private Transferencia[] listaTra;
    private Prestamo[] listaPre;



    // Constructores

    public CuentaBancaria() {
    }

    public CuentaBancaria(String tipoCuenta, String numCuenta, double dinero, Cliente cliente) {
        establecerTipoCuenta(tipoCuenta);
        this.numCuenta = numCuenta;
        this.dinero = dinero;
        this.cliente = cliente;

        this.listaDep = new Deposito[50];
        this.listaExt = new Extraccion[50];
        this.listaTra = new Transferencia[50];
        this.listaPre = new Prestamo[50];

        this.numD = 0;
        this.numE = 0;
        this.numT = 0;
        this.numP = 0;
    }



    // Getters & Setters

    public String getTipoCuenta() {
        return this.tipoCuenta.toString();
    }

    public String getNumCuenta() {
        return numCuenta;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public void setNumCuenta(String numCuenta) {
        this.numCuenta = numCuenta;
    }

    public double getDinero() {
        return dinero;
    }

    public void setDinero(double dinero) {
        this.dinero = dinero;
    }

    public int getNumD() {
        return numD;
    }

    public void setNumD(int numD) {
        this.numD = numD;
    }

    public int getNumE() {
        return numE;
    }

    public void setNumE(int numE) {
        this.numE = numE;
    }

    public int getNumT() {
        return numT;
    }

    public void setNumT(int numT) {
        this.numT = numT;
    }

    public int getNumP() {
        return numP;
    }

    public void setNumP(int numP) {
        this.numP = numP;
    }

    public Deposito[] getListaDep() {
        return listaDep;
    }

    public void setListaDep(Deposito[] listaDep) {
        this.listaDep = listaDep;
    }

    public Extraccion[] getListaExt() {
        return listaExt;
    }

    public void setListaExt(Extraccion[] listaExt) {
        this.listaExt = listaExt;
    }

    public Transferencia[] getListaTra() {
        return listaTra;
    }

    public void setListaTra(Transferencia[] listaTra) {
        this.listaTra = listaTra;
    }

    public Prestamo[] getListaPre() {
        return listaPre;
    }

    public void setListaPre(Prestamo[] listaPre) {
        this.listaPre = listaPre;
    }



    // Funciones publicas

    // Operaciones con la cuenta
    public void menu(Cliente[] listaClientes, int numClientes) {
        Scanner sc = new Scanner(System.in);

        // Seleccion de la operacion
        int opcion;
        do {
            System.out.println("------------------------- MENU DE CUENTA -------------------------");
            System.out.println("0. Atras");
            System.out.println("1. Mostrar Datos Cuenta");
            System.out.println("2. Mostrar Operaciones Realizadas");
            System.out.println("3. Deposito");
            System.out.println("4. Extracciones");
            System.out.println("5. Transferencias");
            System.out.println("6. Prestamo Hipotecario");

            System.out.print("OPCION: ");
            opcion = sc.nextInt();

            System.out.println("------------------------------------------------------------------");

            if (opcion == 1) {
                this.imprimir();
            } else if (opcion == 2) {
                this.mostrarOperaciones();
            } else if (opcion == 3) {
                this.realizarDeposito();
            } else if (opcion == 4) {
                this.realizarExtraccion();
            } else if (opcion == 5) {
                this.realizarTranferencia(listaClientes, numClientes);
            } else if (opcion == 6) {
                this.realizarPrestamo();
            } else if (opcion != 0) {
                System.out.println("¡¡¡ OPCION NO VALIDA !!!");
            }
        } while (opcion != 0);
    }

    // Inicializa las operaciones de la cuenta
    public void inicializarOperaciones(Cliente[] listaClientes, int numClientes) {
        try {
            File operaciones = new File("operaciones.txt");
            Scanner sc = new Scanner(operaciones);

            while (sc.hasNextLine()) {
                String numCuenta = sc.nextLine();
                String operacion = sc.nextLine();
                String datos = sc.nextLine();

                if (numCuenta.equals(this.numCuenta)) {
                    if (operacion.startsWith("Deposito")) {
                        double cantidad = Double.parseDouble(datos);

                        listaDep[numD] = new Deposito(cantidad);
                        numD++;
                    } else if (operacion.startsWith("Extraccion")) {
                        double cantidad = Double.parseDouble(datos);

                        listaExt[numE] = new Extraccion(cantidad);
                        numE++;
                    } else if (operacion.startsWith("Transferencia")) {
                        String[] aux = datos.split(",");
                        double cantidad = Double.parseDouble(aux[0]);
                        String destino = aux[1];
                        CuentaBancaria destinoC = devolverCuenta(destino, listaClientes, numClientes);

                        listaTra[numT] = new Transferencia(this, destinoC, cantidad);
                        numT++;
                    } else if (operacion.startsWith("Prestamo")) {
                        String[] aux = datos.split(",");
                        double capital = Double.parseDouble(aux[0]);
                        int anios = Integer.parseInt(aux[1]);
                        double interesAnual = Double.parseDouble(aux[2]);

                        listaPre[numP] = new Prestamo(capital, interesAnual, anios);
                        numP++;
                    }
                }
            }

        } catch (IOException ioException) {
            System.out.println("¡¡¡ ERROR !!!");
            ioException.printStackTrace();
        }
    }



    // Funciones privadas

    // Imprime los datos de la cuenta bancaria
    private void imprimir() {
        System.out.println("Datos de la Cuenta Bancaria: ");
        System.out.println("\t- Tipo de Cuenta: " + this.tipoCuenta.name());
        System.out.println("\t- Numero de Cuenta: " + this.numCuenta);
        System.out.println("\t- Dinero: " + this.dinero);
        System.out.println("------------------------------------------------------------------");
    }

    // Realiza un prestamo
    private void realizarPrestamo() {
        if (numP < 50) {
            Scanner sc = new Scanner(System.in);

            System.out.println("---------------------------- PRESTAMO ----------------------------");

            // Obtener los datos de la operacion
            double capital;
            do {
                System.out.print("\t- Introduce la cantidad de capital: ");
                capital = sc.nextDouble();

                if (capital < 0)
                    System.out.println("¡¡¡ CANTIDAD NO VALIDA !!!");
            } while (capital < 0);

            int interesAnual;
            do {
                System.out.print("\t- Introduce el interes anual que deseas (valor porcentual): ");
                interesAnual = sc.nextInt();
                if (interesAnual < 0 || interesAnual > 100)
                    System.out.println("¡¡¡ INTERES NO VALID0 !!!");
            } while (interesAnual < 0 || interesAnual > 100);

            int anios;
            do {
                System.out.print("\t- Introduce el numero de años: ");
                anios = sc.nextInt();
                if (anios < 0)
                    System.out.println("¡¡¡ ANIOS NO VALID0 !!!");
            } while (anios < 0);

            double interesMensual = (interesAnual / 100.0) / 12;
            int meses = 12 * anios;

            double cuota = calculoCuota(capital, interesMensual, meses);

            // Imprimir la tabla
            printTablaAmortizaciones(capital, interesMensual, meses, cuota);

            // Incluir operacion en la lista
            listaPre[numP] = new Prestamo(capital, interesAnual, anios);
            numP++;

            // Registrar operacion
            try {
                File operaciones = new File("operaciones.txt");
                FileWriter fw = new FileWriter(operaciones, true);
                if (operaciones.length() != 0)
                    fw.write("\n");
                fw.write(this.numCuenta + "\n");
                fw.write("Prestamo\n");
                fw.write(capital + "," + anios + "," + interesAnual);
                fw.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

            // Realizar operacion
            this.dinero += capital;

            System.out.println("------------------------------------------------------------------");
        } else System.out.println("¡¡¡ NUMERO MAXIMO DE PRESTAMOS REALIZADOS !!!");
    }

    // Imprime la tabla de amortizaciones
    private void printTablaAmortizaciones(double capital, double interesMensual, int meses, double cuota) {
        double interes = 0, amortizado = 0, capitalVivo = 0, capitalVivoAnt = capital, pagoMensual = 0;

        System.out.println("MES\t\tPAGO MENSUAL\t   INTERES\t\t  AMORTIZADO\tCAPITALVIVO");
        for (int i = 0; i <= meses; i++) {
            System.out.printf("%3d\t\t%9.02f\t\t%9.02f\t\t%9.02f\t\t%9.02f\n", i, pagoMensual, interes, amortizado, capitalVivoAnt);
            pagoMensual = cuota;
            interes = capitalVivoAnt * interesMensual;
            amortizado = cuota - interes;
            capitalVivo = capitalVivoAnt - amortizado;
            capitalVivoAnt = capitalVivo;
        }

        System.out.println("------------------------------------------------------------------");
    }

    // Calcula la cuota del prestamo
    private double calculoCuota(double capital, double interesMensual, int meses) {
        double cuota;

        cuota = capital * interesMensual * (((Math.pow(1 + interesMensual, meses)) / (Math.pow(1 + interesMensual, meses) - 1)));

        return cuota;
    }

    // Realiza una transferencia
    private void realizarTranferencia(Cliente[] listaClientes, int numClientes) {
        // Comprueba las transferencias realizadas
        if (numT < 50) {
            Scanner sc = new Scanner(System.in);
            double cantidad;
            String destino;

            System.out.println("-------------------------- TRANSFERENCIA -------------------------");

            // Obtener los datos
            do {
                System.out.print("Introduzca la cantidad que desea transferir: ");
                cantidad = sc.nextDouble();

                if (cantidad < 0)
                    System.out.println("¡¡¡ CANTIDAD NEGATIVA !!!");
                else if (cantidad > this.dinero)
                    System.out.println("¡¡¡ DINERO INSUFICIENTE !!!");
            } while (cantidad < 0 || cantidad > this.dinero);


            do {
                System.out.print("Introduzca el numero de cuenta del destinatario: ");
                destino = sc.next();

                if (!existeCuenta(destino))
                    System.out.println("¡¡¡ NO EXISTE DESTINO !!!");
            } while (!existeCuenta(destino));
            CuentaBancaria destinoE = devolverCuenta(destino, listaClientes, numClientes);

            // Añadir en lista de operaciones
            listaTra[numT] = new Transferencia(this, destinoE, cantidad);
            numT++;

            // Registrar en fichero
            try {
                File operaciones = new File("operaciones.txt");
                FileWriter fw = new FileWriter(operaciones, true);
                if (operaciones.length() != 0)
                    fw.write("\n");
                fw.write(this.getNumCuenta() + "\n");
                fw.write("Transferencia\n");
                fw.write(cantidad + "," + destino);
                fw.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

            // Realizar la operacion
            this.dinero -= cantidad;
            destinoE.setDinero(destinoE.getDinero() + cantidad);

            System.out.println("------------------------------------------------------------------");
        } else System.out.println("¡¡¡ NUMERO MAXIMO DE TRANSFERENCIAS REALIZADAS !!!");
    }

    // Realiza un deposito
    private void realizarDeposito() {
        // Comprobacion del numero de depositos realizados
        if (numD < 50) {
            Scanner sc = new Scanner(System.in);
            double cantidad;

            System.out.println("---------------------------- DEPOSITO ----------------------------");

            // Obtener la datos
            do {
                System.out.print("Introduzca la cantidad que desea depositar: ");
                cantidad = sc.nextDouble();

                if (cantidad < 0)
                    System.out.println("¡¡¡ CANTIDAD NEGATIVA !!!");
            } while (cantidad < 0);

            // Añadir en lista de operaciones
            listaDep[numD] = new Deposito(cantidad);
            numD++;

            // Registrar en fichero
            try {
                File operaciones = new File("operaciones.txt");
                FileWriter fw = new FileWriter(operaciones, true);
                if (operaciones.length() != 0)
                    fw.write("\n");
                fw.write(this.numCuenta + "\n");
                fw.write("Deposito\n");
                fw.write("" + cantidad);
                fw.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

            // Realizar la operacion
            this.dinero += cantidad;

            System.out.println("------------------------------------------------------------------");
        } else System.out.println("¡¡¡ NUMERO MAXIMO DE DEPOSITOS REALIZADOS !!!");
    }

    // Realiza una extraccion
    private void realizarExtraccion() {
        // Comprobacion del numero de extracciones realizados
        if (numE < 50) {
            Scanner sc = new Scanner(System.in);
            double cantidad;
            System.out.println("--------------------------- EXTRACCION ---------------------------");

            // Obtener la datos
            do {
                System.out.print("Introduzca la cantidad que desea extraer: ");
                cantidad = sc.nextDouble();

                if (cantidad < 0)
                    System.out.println("¡¡¡ CANTIDAD NEGATIVA !!!");
                else if (cantidad > this.dinero)
                    System.out.println("¡¡¡ DINERO INSUFICIENTE !!!");
            } while (cantidad < 0 || cantidad > this.dinero);

            // Añadir en lista de operaciones
            listaExt[numE] = new Extraccion(cantidad);
            numE++;

            // Registrar en fichero
            try {
                File operaciones = new File("operaciones.txt");
                FileWriter fw = new FileWriter(operaciones, true);
                if (operaciones.length() != 0)
                    fw.write("\n");
                fw.write(this.numCuenta + "\n");
                fw.write("Extraccion\n");
                fw.write("" + cantidad);
                fw.close();
            } catch (IOException ioException) {
                ioException.printStackTrace();
            }

            // Realizar la operacion
            this.dinero -= cantidad;

            System.out.println("------------------------------------------------------------------");
        } else System.out.println("¡¡¡ NUMERO MAXIMO DE EXTRACCIONES REALIZADAS !!!");
    }

    // Imprime las operaciones realizadas por la cuenta
    private void mostrarOperaciones() {
        // Comprueba si se ha realizado alguna operacion
        if (numD == 0 && numE == 0 && numT == 0 && numP == 0)
            System.out.println("¡¡¡ NO SE HAN REALIZADO OPERACIONES !!!");
        else {
            // Comprueba si se ha realizado depositos
            if (numD != 0) {
                System.out.println("Depositos:");
                for (int i = 0; i < numD; i++) {
                    System.out.print("\t- ");
                    listaDep[i].imprimir();
                }
            }

            // Comprueba si se ha realizado extracciones
            if (numE != 0) {
                System.out.println("Extracciones:");
                for (int i = 0; i < numE; i++) {
                    System.out.print("\t- ");
                    listaExt[i].imprimir();                }
            }

            // Comprueba si se ha realizado transferencias
            if (numT != 0) {
                System.out.println("Transferencias:");
                for (int i = 0; i < numT; i++) {
                    System.out.print("\t- ");
                    listaTra[i].imprimir();                }
            }

            // Comprueba si se ha realizado prestamos
            if (numP != 0) {
                System.out.println("Prestamos:");
                for (int i = 0; i < numP; i++) {
                    System.out.print("\t- ");
                    listaPre[i].imprimir();                }
            }
        }
        System.out.println("------------------------------------------------------------------");
    }

    // Comprueba si existe la cuenta
    private boolean existeCuenta(String numCuentaE) {
        boolean encontrado = false;
        try {
            File operaciones = new File("cuentas bancarias.txt");
            Scanner sc = new Scanner(operaciones);

            while (sc.hasNextLine() && !encontrado) {
                String correo = sc.nextLine();
                String tipoCuenta = sc.nextLine();
                String numCuenta = sc.nextLine();
                double dinero = Double.parseDouble(sc.nextLine());

                if (numCuenta.equals(numCuentaE)) {
                    encontrado = true;
                }
            }

        } catch (IOException ioException) {
            System.out.println("¡¡¡ ERROR !!!");
            ioException.printStackTrace();
        }

        return encontrado;
    }

    // Devuelve la cuenta
    private CuentaBancaria devolverCuenta(String numCuentaE, Cliente[] listaClientes, int numClientes) {
        CuentaBancaria cuentaBancaria = new CuentaBancaria();
        int i = 0;

        boolean fin = false;
        while (!fin && i < numClientes) {
            if (listaClientes[i] != null) {
                int j = 0;
                while (j < listaClientes[i].getNumCuentas() && !fin) {
                    if (listaClientes[i].getListaCuentas()[j] != null) {
                        if (numCuentaE.equals(listaClientes[i].getListaCuentas()[j].getNumCuenta())) {
                            fin = true;
                            cuentaBancaria = listaClientes[i].getListaCuentas()[j];
                        } else j++;
                    }
                }
                if (!fin)
                    i++;
            }
        }

        return cuentaBancaria;
    }

    // Establece el tipo de cuenta
    private void establecerTipoCuenta(String tipoCuenta) {
        switch (tipoCuenta) {
            case "Ahorros":
                this.tipoCuenta = TipoCuenta.Ahorros;
                break;
            case "Remunerada":
                this.tipoCuenta = TipoCuenta.Remunerada;
                break;
            case "Corriente":
                this.tipoCuenta = TipoCuenta.Corriente;
                break;
        }
    }
}