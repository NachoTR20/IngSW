import java.io.*;
import java.util.Scanner;

public class Cliente<stactic> {
    private CuentaBancaria[] listaCuentas;
    private int numCuentas;
    private String correo, nombre, apellidos;
    private DNI dni;
    private Fecha fecha;



    // Constructores
    public Cliente(String nombre, String apellidos, Fecha fecha, DNI dni, String correo) {
        this.correo = correo;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.dni = dni;
        this.fecha = fecha;

        this.numCuentas = 0;
        this.listaCuentas = new CuentaBancaria[10];
    }



    // Getters & Setters

    public CuentaBancaria[] getListaCuentas() {
        return listaCuentas;
    }

    public void setListaCuentas(CuentaBancaria[] listaCuentas) {
        this.listaCuentas = listaCuentas;
    }

    public int getNumCuentas() {
        return numCuentas;
    }

    public void setNumCuentas(int numCuentas) {
        this.numCuentas = numCuentas;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public DNI getDni() {
        return dni;
    }

    public void setDni(DNI dni) {
        this.dni = dni;
    }

    public Fecha getFecha() {
        return fecha;
    }

    public void setFecha(Fecha fecha) {
        this.fecha = fecha;
    }



    // Funciones publicas

    // Operaciones con el cliente
    public void menu(Cliente[] listaCliente, int numCliente, int CS) {
        Scanner sc = new Scanner(System.in);

        // Seleccion de opcion
        int opcion;
        do {
            System.out.println("------------------------ MENU DE CLIENTE -------------------------");
            System.out.println("0. Atras");
            System.out.println("1. Mostrar Datos Cliente");
            System.out.println("2. Crear Cuenta Bancaria");
            System.out.println("3. Operaciones Cuenta Bancaria");

            System.out.print("OPCION: ");
            opcion = sc.nextInt();

            System.out.println("------------------------------------------------------------------");

            if (opcion == 1)
                this.imprimir();
            else if (opcion == 2)
                this.crearCuentaBancaria(listaCliente, numCliente, CS);
            else if (opcion == 3 && numCuentas != 0) {
                int opcion2;
                do {
                    // Seleccion de la cuenta
                    System.out.println("Seleccione la cuenta con la que desea realizar las operaciones:");
                    for (int i = 0; i < numCuentas; i++) {
                        System.out.print((i + 1) + ". " + listaCuentas[i].getNumCuenta() + " (" + listaCuentas[i].getDinero() + ")\n");
                    }
                    System.out.print("OPCION: ");
                    opcion2 = sc.nextInt();

                    if (opcion2 < 0 || opcion2 > numCuentas)
                        System.out.println("¡¡¡ OPCION NO VALIDA !!!");
                } while (opcion2 < 0 && opcion2 > numCuentas);

                listaCuentas[opcion2-1].menu(listaCliente, numCliente);
            }
            else if (numCuentas == 0 && opcion == 3)
                System.out.println("¡¡¡ NO EXISTE NINGUNA CUENTA BANCARIA !!!");
            else if (opcion != 0)
                System.out.println("¡¡¡ OPCION NO VALIDA !!!");

        } while (opcion != 0);
    }

    // Inicializacion de las cuentas del cliente
    public void incializar() {
        try {
            File cuentas = new File("cuentas bancarias.txt");
            Scanner sc = new Scanner(cuentas);

            while (sc.hasNextLine()) {
                String correo = sc.nextLine();
                String tipoCuenta = sc.nextLine();
                String numCuenta = sc.nextLine();
                double dinero = Double.parseDouble(sc.nextLine());

                if (this.correo.equals(correo)) {
                    listaCuentas[numCuentas] = new CuentaBancaria(tipoCuenta, numCuenta, dinero, this);
                    numCuentas++;
                }
            }

        } catch (IOException ioException) {
            System.out.println("¡¡¡ ERROR !!!");
            ioException.printStackTrace();
        }
    }




    // Funciones privadas

    // Impresion de los datos del cliente
    private void imprimir() {
        System.out.println("Datos del Cliente: ");
        System.out.println("\t- Nombre: " + this.nombre);
        System.out.println("\t- Apellidos: " + this.apellidos);
        System.out.printf("\t- Fecha: %02d/%02d/%04d\n", this.fecha.getDia(), this.fecha.getMes(), this.fecha.getAnio());
        System.out.printf("\t- DNI: %08d%c\n", this.dni.getNumeros(),this.dni.getLetra());
        System.out.println("\t- CorreoUPM: " + this.correo);
        System.out.println("------------------------------------------------------------------");
    }

    // Crea una nueva cuenta bancaria
    private void crearCuentaBancaria(Cliente[] listaClientes, int numCliente, int CS) {
        // Comprobacion del numero de cuentas del cliente
        if (this.numCuentas < 10) {
            Scanner sc = new Scanner(System.in);

            // Obtener los datos
            int opcion;
            do {
                System.out.println("Seleccione el tipo de cuenta: ");
                System.out.println("\t1- Corriente");
                System.out.println("\t2- Ahorros");
                System.out.println("\t3- Remunerada");
                System.out.print("OPCION:");
                opcion = sc.nextInt();

                if (opcion != 1  && opcion != 2 && opcion != 3) {
                    System.out.println("¡¡¡ OPCION NO VALIDA !!!");
                }
            } while (opcion != 1  && opcion != 2 && opcion != 3);

            String tipoCuenta;
            if (opcion == 1)
                tipoCuenta = "Corriente";
            else if (opcion == 2)
                tipoCuenta = "Ahorros";
            else tipoCuenta = "Remunerada";

            String numCuenta = "";
            boolean fin = false;
            do {
                long NC = (long) (Math.random() * 10e10 + 1);
                int DC1 = generarDC1(CS, 9010);
                int DC2 = generarDC2(NC);

                numCuenta = String.format("%04d%04d%d%d%010d", 9010, CS, DC1, DC2, NC);

                if (!cuentaRepetido(numCuenta, listaClientes, numCliente)) {
                    fin = true;
                }
            } while (!fin);

            double dinero;
            do {
                System.out.print("Introduce el dinero inicial de la cuenta: ");
                dinero = sc.nextDouble();
            } while (dinero < 0);

            // Añadir a la lista
            listaCuentas[numCuentas] = new CuentaBancaria(tipoCuenta, numCuenta, dinero, this);
            numCuentas++;

            // Registrar en fichero
            try {
                File cuentas = new File("cuentas bancarias.txt");
                FileWriter fw = new FileWriter(cuentas, true);
                if (cuentas.length() != 0)
                    fw.write("\n");
                fw.write(this.correo + "\n");
                fw.write(tipoCuenta + "\n");
                fw.write(numCuenta + "\n");
                fw.write(dinero + "");
                fw.close();
            } catch (IOException e) {
                System.out.println("¡¡¡ ERROR !!!");
                e.printStackTrace();
            }

            System.out.println("------------------------------------------------------------------");

        } else System.out.println("¡¡¡ LIMITE DE CUENTAS ALCANZADO !!!");
    }

    private int generarDC1(int CS, int CE) {
        int resto0 = (6 * CS % 10000 + 3 * CS % 1000 + 7 * CS % 100 + 9 * CS % 10  + 10 * CE % 10000 + 5 * CE % 1000 + 8 * CE % 100 + 4 * CE % 10) % 11;
        if (11 - resto0 == 10)
            return 1;
        else if (11 - resto0 == 11)
            return 0;
        else return 11 - resto0;
    }

    private int generarDC2(long NC) {
        int resto1 = (int) (NC % 10e1 + 2 * NC % 10e2 + 4 * NC % 10e3 + 8 * NC % 10e4  + 5 * NC % 10e5 + 10 * NC % 10e6 + 9 * NC % 10e7 + 7 * NC % 10e8 + 3 * NC % 10e9 + 6 * NC % 10e10) % 11;
        if (11 - resto1 == 10)
            return 1;
        else if (11 - resto1 == 11)
            return 0;
        else return 11 - resto1;
    }

    // Comprueba que el numero de cuenta creado no coincida con ningun otro
    private boolean cuentaRepetido (String numCuentaB, Cliente[] listaClientes, int numClientes) {
        boolean repetido = false;
        int i = 0;
        while (i < numClientes && !repetido) {
            int j = 0;
            while (j < listaClientes[i].numCuentas && !repetido) {
                if (numCuentaB.equals(listaClientes[i].listaCuentas[j].getNumCuenta()))
                    repetido = true;
                else j++;
            }
            if (!repetido)
                i++;
        }

        return repetido;
    }
}
