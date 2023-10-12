import java.io.*;
import java.util.Scanner;

public class Principal {
    private static int numClientes;
    private static Cliente[] listaClientes;

    public static void main(String[] args) {
        // Inicializar contenido ficheros
        inicializar();

        System.out.println("------------------------------------------------------------------");
        System.out.println("---------------------- BIENVENIDO A UPMBANK ----------------------");
        System.out.println("------------------------------------------------------------------");

        // Menu de Operaciones y seleccion de sucursal
        menu(selectSucursal());

        System.out.println("------------------------------------------------------------------");
        System.out.println("------------------------- VUELVA PRONTO! -------------------------");
        System.out.println("------------------------------------------------------------------");

        // Actualizar fichero CuentasBancarias
        ficheroCuentas();

        // Crear fichero transferencias
        ficheroTransferencias();
    }

    // Menu de operaciones principal
    private static void menu(int CS) {
        Scanner sc = new Scanner(System.in);

        // Eleccion de la operacion
        int opcion;
        do {
            System.out.println("------------------------- MENU PRINCIPAL -------------------------");
            System.out.println("0. Salir");
            System.out.println("1. Alta Cliente");
            System.out.println("2. Operaciones Cliente");

            System.out.print("OPCION: ");
            opcion = sc.nextInt();

            System.out.println("------------------------------------------------------------------");

            if (opcion == 1)
                altaCliente();
            else if (opcion == 2 && numClientes != 0) {
                // LOGIN
                String correo;
                boolean encontrado = false;
                int i;
                do {
                    System.out.print("Introduzca su correo: ");
                    correo = sc.next();

                    i = 0;
                    while (i < numClientes && !encontrado) {
                        if (listaClientes[i].getCorreo().equals(correo))
                            encontrado = true;
                        else i++;
                    }

                    if (!encontrado)
                        System.out.println("¡¡¡ EL CORREO NO COINCIDE CON EL DE NINGUN CLIENTE !!!");
                } while (!encontrado);

                System.out.println("------------------------------------------------------------------");

                // Entramos al menu de operaciones de cliente
                listaClientes[i].menu(listaClientes, numClientes, CS);
            }
            else if (numClientes == 0 && opcion == 2)
                System.out.println("¡¡¡ NO EXISTE NINGUN CLIENTE !!!");
            else if (opcion != 0)
                System.out.println("¡¡¡ OPCION NO VALIDA !!!");

        } while (opcion != 0);

        sc.close();
    }

    // Registra un nuevo cliente
    private static void altaCliente() {
        // Comprobacion de que el numero de clientes registrados sea menor que el maximo posible
        if (numClientes < listaClientes.length) {
            Scanner sc = new Scanner(System.in);

            // Obtencion de datos
            System.out.print("\t- Nombre: ");
            String nombre = sc.nextLine();

            System.out.print("\t- Apellidos: ");
            String apellidos = sc.nextLine();

            String f;
            Fecha fecha = new Fecha();
            boolean finFecha = false;
            do {
                System.out.print("\t- Fecha de nacimiento (dd/mm/aaaa): ");
                f = sc.nextLine();

                if (f.length() == 10 && f.charAt(2) == '/' && f.charAt(5) == '/' && Character.isDigit(f.charAt(0)) && Character.isDigit(f.charAt(1)) && Character.isDigit(f.charAt(3)) && Character.isDigit(f.charAt(4)) && Character.isDigit(f.charAt(6)) && Character.isDigit(f.charAt(7)) && Character.isDigit(f.charAt(8)) && Character.isDigit(f.charAt(9))) {

                    String[] aux = f.split("/");
                    int dia = Integer.parseInt(aux[0]);
                    int mes = Integer.parseInt(aux[1]);
                    int anio = Integer.parseInt(aux[2]);
                    fecha = new Fecha(dia, mes, anio);

                    finFecha = fecha.fechaCorrecta();
                }

                if (!finFecha)
                    System.out.println("¡¡¡ FECHA NO VALIDA !!!");
            } while (!finFecha);

            String d;
            DNI dni = new DNI();
            boolean finDNI = false;
            do {
                System.out.print("\t- DNI (letras mayuscula): ");
                d = sc.nextLine();

                if (d.length() == 9 && Character.isDigit(d.charAt(0)) && Character.isDigit(d.charAt(1)) && Character.isDigit(d.charAt(2)) && Character.isDigit(d.charAt(3)) && Character.isDigit(d.charAt(4)) && Character.isDigit(d.charAt(5)) && Character.isDigit(d.charAt(6)) && Character.isDigit(d.charAt(7)) && Character.isAlphabetic(d.charAt(8))) {
                    long numeros = Long.parseLong(d.substring(0, 8));
                    char letra = d.charAt(8);

                    dni = new DNI(numeros, letra);
                    if (dni.dniCorrecto()) {
                        finDNI = dniRepetido(dni);
                    }
                }

                if (!finDNI)
                    System.out.println("¡¡¡ DNI NO VALIDO !!!");
            } while (!finDNI);

            String correo = "";
            do {
                System.out.print("\t- Correo (@upm.es / @alumnos.upm.es): ");
                correo = sc.nextLine();

                if ((!correo.endsWith("@upm.es") || correo.equals("@upm.es")) && (!correo.endsWith("@alumnos.upm.es") || correo.equals("@alumnos.upm.es")))
                    System.out.println("¡¡¡ CORREO NO VALIDO !!!");
                else if (!correoRepetido(correo))
                    System.out.println("¡¡¡ CORREO REPETIDO !!!");

            } while (((!correo.endsWith("@upm.es") || correo.equals("@upm.es")) && (!correo.endsWith("@alumnos.upm.es") || correo.equals("@alumnos.upm.es"))) || !correoRepetido(correo));

            // Añadir a la lista
            listaClientes[numClientes] = new Cliente(nombre, apellidos, fecha, dni, correo);
            numClientes++;

            // Registrar en fichero
            try {
                File clientes = new File("clientes.txt");
                FileWriter fw = new FileWriter(clientes, true);
                if (clientes.length() != 0)
                    fw.write("\n");
                fw.write(nombre + "\n");
                fw.write(apellidos + "\n");
                fw.write(f + "\n");
                fw.write(d + "\n");
                fw.write(correo);
                fw.close();
            } catch (IOException e) {
                System.out.println("¡¡¡ ERROR !!!");
                e.printStackTrace();
            }
        } else System.out.println("¡¡¡ NUMERO MAXIMO DE CLIENTES ALCANZADOS !!!");

        System.out.println("------------------------------------------------------------------");
    }

    // Inicializa todo el programa
    private static void inicializar() {
        // Inicializacino de los clientes
        listaClientes = new Cliente[20];
        numClientes = 0;

        try {
            // Añadir los clientes ya registrados
            File cuentas = new File("clientes.txt");
            Scanner sc = new Scanner(cuentas);

            while (sc.hasNextLine()) {
                String nombre = sc.nextLine();
                String apellidos = sc.nextLine();
                String fecha = sc.nextLine();
                String dni = sc.nextLine();
                String correo = sc.nextLine();

                String[] aux = fecha.split("/");
                int dia = Integer.parseInt(aux[0]);
                int mes = Integer.parseInt(aux[1]);
                int anio = Integer.parseInt(aux[2]);
                Fecha f = new Fecha(dia, mes, anio);

                long numeros = Long.parseLong(dni.substring(0, 8));
                char letra = dni.charAt(8);

                DNI d = new DNI(numeros, letra);

                listaClientes[numClientes] = new Cliente(nombre, apellidos, f, d, correo);
                numClientes++;
            }


            // Inicializacion de las cuentas ya creadas de los clientes
            for (int i = 0; i < numClientes; i++) {
                listaClientes[i].incializar();
            }

            // Inicializacion de las operaciones ya realizadas de los clientes
            for (int i = 0; i < numClientes; i++) {
                for (int j = 0; j < listaClientes[i].getNumCuentas(); j++) {
                    listaClientes[i].getListaCuentas()[j].inicializarOperaciones(listaClientes, numClientes);
                }
            }

        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
    }

    // Selecciona el numero de sucursal
    private static int selectSucursal() {
        try {
            // Obtencion las sucursales y sus numeros
            File sucursales = new File("sucursales.txt");
            Scanner sc = new Scanner(sucursales);

            String[][] sucursal = new String[4][];

            for(int i = 0; i < 4; i++) {
                sucursal[i] = sc.nextLine().split("=");
            }

            // Eleccion de la sucursal
            int num;
            do {
                System.out.println("----------------------- SELECCION SURCUSAL -----------------------");
                System.out.println("Seleccione la sucursal en la que se encuentra:");

                for (int i = 0; i < 4; i++) {
                    System.out.println("\t" + (i + 1) + ". " + sucursal[i][0] + " (" + sucursal[i][1] + ")");
                }
                System.out.print("OPCION: ");
                Scanner sc1 = new Scanner(System.in);
                num = sc1.nextInt() - 1;

                // Comprobacion de que la opcion elegida sea valida
                if (num < 0 || num > 4) {
                    System.out.println("------------------------------------------------------------------");
                    System.out.println("¡¡¡ NUMERO NO VALIDO !!!");
                }

                System.out.println("------------------------------------------------------------------");
            } while (num < 0 || num > 4);

            return Integer.parseInt(sucursal[num][1]);
        } catch (FileNotFoundException f) {
            f.printStackTrace();
            return -1;
        }
    }

    // Comprueba que el dni no este registrado por otro cliente
    private static boolean dniRepetido(DNI dni) {
        boolean res = true;

        int i = 0;
        while (i < numClientes && res) {
            if (listaClientes[i].getDni().getNumeros() == dni.getNumeros() && listaClientes[i].getDni().getLetra() == dni.getLetra())
                res = false;
            else i++;
        }

        return res;
    }

    // Comprueba que el correo no este registrado por otro cliente
    private static boolean correoRepetido(String correo) {
        boolean res = true;

        int i = 0;
        while (i < numClientes && res) {
            if (listaClientes[i].getCorreo().equals(correo))
                res = false;
            else i++;
        }

        return res;
    }

    // Crea el fichero con las transferencias realizadas
    private static void ficheroTransferencias() {
        try {
            File transf = new File("transferencias.txt");
            transf.createNewFile();
            FileWriter fw = new FileWriter(transf);

            CuentaBancaria[] todas = new CuentaBancaria[200];
            Transferencia[] transferencias = new Transferencia[200*50];
            int numTransf = 0;
            int total = 0;
            for (int i = 0; i < numClientes; i++) {
                for (int j = 0; j < listaClientes[i].getNumCuentas(); j++) {
                    todas[total] = listaClientes[i].getListaCuentas()[j];
                    for (int k = 0; k < todas[total].getNumT(); k++) {
                        transferencias[numTransf] = todas[total].getListaTra()[k];
                        numTransf++;
                    }
                    total++;
                }
            }

            for (int i = 0; i < total; i++) {
                fw.write(todas[i].getNumCuenta() + "\n");
            }

            fw.write("\n");

            double[][] suma = new double[total][total];
            for (int i = 0; i < total; i++) {
                for (int j = 0; j < total; j++) {
                    suma[i][j] = 0;
                }
            }

            for (int i = 0; i < numTransf; i++) {
                int origen = 0;
                boolean fin1 = false;
                while (!fin1) {
                    if (transferencias[i].getOrigen().equals(todas[origen]))
                        fin1 = true;
                    else origen++;
                }

                int destino = 0;
                boolean fin2 = false;
                while (!fin2) {
                    if (transferencias[i].getDestino().equals(todas[destino]))
                        fin2 = true;
                    else destino++;
                }

                suma[origen][destino] += transferencias[i].getCantidad();
            }

            for (int i = 0; i < total; i++) {
                for (int j = 0; j < total; j++) {
                    fw.write("\t" + suma[i][j] + "\t");
                }
                fw.write("\n");
            }

            fw.close();
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
    }

    // Reescribe el fichero de las cuentas bancarias con los nuevos datos
    private static void ficheroCuentas() {
        try {
            File cuentas = new File("cuentas bancarias.txt");
            FileWriter fw = new FileWriter(cuentas);

            CuentaBancaria[] listaCuentas = new CuentaBancaria[200];
            int numCuentas = 0;

            for (int i = 0; i < numClientes; i++) {
                for (int j = 0; j < listaClientes[i].getNumCuentas(); j++) {
                    listaCuentas[numCuentas] = listaClientes[i].getListaCuentas()[j];
                    numCuentas++;
                }
            }

            for (int i = 0; i < numCuentas; i++) {
                if (i != 0)
                    fw.write("\n");
                fw.write(listaCuentas[i].getCliente().getCorreo() + "\n");
                fw.write(listaCuentas[i].getTipoCuenta() + "\n");
                fw.write(listaCuentas[i].getNumCuenta() + "\n");
                fw.write(listaCuentas[i].getDinero() + "");
            }
            fw.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
