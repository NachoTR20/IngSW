import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import expresscorreos.model.Cartero;
import expresscorreos.model.Municipio;
import expresscorreos.model.Oficina;
import expresscorreos.model.Provincia;

public class Main {
    // @TODO: Sustituya xxxx por los parámetros de su conexión

    private static final String DB_SERVER = "localhost";

    private static final int DB_PORT = 3306;

    private static final String DB_NAME = "ExpressCorreos";

    private static final String DB_USER = "root";

    private static final String DB_PASS = "";

    private static Connection conn;

    public static void main(String[] args) throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://" + DB_SERVER + ":" + DB_PORT + "/" + DB_NAME;
        conn = DriverManager.getConnection(url, DB_USER, DB_PASS);

        System.out.println("Conexion realizada con la base de datos");

        // @TODO pruebe sus funciones

        System.out.println("------------------------------------------------------------------------------------");

        System.out.println("------------------------------------ PROBLEMA 1 ------------------------------------");

        System.out.println("Carteros antes de añadir:");
        List<Cartero> listaPre = verCarteros();
        for (Cartero c : listaPre)
            System.out.println("\t- " + c.getNombre() + " " + c.getApellidos() + " (" + c.getDNI() + ")");

        nuevoCartero("01237659D", "Antonio", "Lopez");

        System.out.println("Carteros despues de añadir:");
        List<Cartero> listaPost = verCarteros();
        for (Cartero c : listaPost)
            System.out.println("\t- " + c.getNombre() + " " + c.getApellidos() + " (" + c.getDNI() + ")");

        System.out.println("------------------------------------------------------------------------------------");

        System.out.println("------------------------------------ PROBLEMA 2 ------------------------------------");

        int periodo = 7;

        System.out.println("Carteros con reparto en los ultimos " + periodo + " dias:");
        List<Cartero> listaC = carterosRepartoCochePeriodo(periodo);
        for (Cartero c : listaC)
            System.out.println("\t- " + c.getNombre() + " " + c.getApellidos() + " (" + c.getDNI() + ")");

        System.out.println("------------------------------------------------------------------------------------");

        System.out.println("------------------------------------ PROBLEMA 3 ------------------------------------");

        String calle = "Paseo de prado";

        System.out.println("Oficinas asociadas a la calle '" + calle + "':");
        List<Oficina> listaO = oficinasAsociadasCalle2(calle);
        for (Oficina o : listaO) {
            System.out.println("\t- " + o.getCodO() + " en " + o.getMunicipio().getNombre() + ", " + o.getMunicipio().getProvincia().getNombre());
        }

        System.out.println("------------------------------------------------------------------------------------");

        System.out.println("------------------------------------ PROBLEMA 4 ------------------------------------");

        System.out.println(cochesSinUtilizarPeriodo(30));

        System.out.println("------------------------------------------------------------------------------------");

        conn.close();
    }

    // @TODO resuelva las siguientes funciones...

    public static void nuevoCartero(String DNI, String nombre, String apellidos) throws SQLException{
        // @TODO: complete este método para que cree un nuevo cartero en la base de datos

        PreparedStatement stmt =conn.prepareStatement("insert into Cartero(Nombre,Apellido,DNI) values(?,?,?)");
        stmt.setString(1, nombre);
        stmt.setString(2, apellidos);
        stmt.setString(3, DNI);
        stmt.executeUpdate();

        stmt.close();
    }

    public static List<Cartero> verCarteros() throws SQLException {
        List<Cartero> lista = new ArrayList<Cartero>();

        PreparedStatement stmt =conn.prepareStatement("select * from Cartero\n");
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            String nombre = rs.getString(1);
            String apellido = rs.getString(2);
            String DNI = rs.getString(3);

            Cartero cartero = new Cartero(DNI, nombre, apellido);

            lista.add(cartero);
        }

        stmt.close();
        rs.close();

        return lista;
    }

    public static List<Cartero> carterosRepartoCochePeriodo(int periodo) throws SQLException{
        // @TODO: complete este método para que muestre por pantalla una lista de carteros que han
        // realizado un reparto con coche en el periodo comprendido por los últimos "periodo" días
        // (implementar para periodo=7)
        // Tenga en cuenta que la consulta a la base de datos le devolverá un ResultSet sobre el que deberá
        // ir iterando y creando un objeto con cada Cartero que cumpla con las condiciones,
        // y añadirlos a la lista
        // return lista;

        List<Cartero> lista = new ArrayList<Cartero>();

        PreparedStatement stmt =conn.prepareStatement("select Cartero.Nombre, Cartero.Apellido, Cartero.DNI\n"
                                                        + "from Cartero\n"
                                                        + "     inner join Reparto on Reparto.DNI = Cartero.DNI\n"
                                                        + "where Reparto.Fecha between DATE_SUB(curdate(),INTERVAL ? day) and curdate()\n"
                                                        + "group by Cartero.Nombre, Cartero.Apellido, Cartero.DNI;");

        stmt.setInt(1, periodo);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            String nombre = rs.getString(1);
            String apellido = rs.getString(2);
            String DNI = rs.getString(3);

            Cartero cartero = new Cartero(DNI, nombre, apellido);

            lista.add(cartero);
        }

        stmt.close();
        rs.close();

        return lista;
    }

    public static List<Oficina> oficinasAsociadasCalle(String calle) throws SQLException {
        // @TODO: complete este método para que muestre por pantalla una lista de las oficinas que
        // dan servicio a la C/Alcalá de Madrid.
        // Tenga en cuenta que la consulta a la base de datos le devolverá un ResultSet sobre el que deberá
        // ir iterando y creando un objeto con cada Oficina que tenga asociada algún segmento de esa calle,
        // y añadirlos a la lista
        //return lista;

        List<Oficina> lista = new ArrayList<Oficina>();

        PreparedStatement stmt =conn.prepareStatement(  "select Oficina.CodO, Oficina.NombreM, Municipio.CodP, Provincia.Nombre\n" +
                                                            "from Oficina\n" +
                                                            "    inner join Municipio on Oficina.NombreM = Municipio.NombreM\n" +
                                                            "    inner join Provincia on Municipio.CodP = Provincia.CodP\n" +
                                                            "where Oficina.CodO in (select Area_Envio.CodO\n" +
                                                            "                       from Area_Envio\n" +
                                                            "                           inner join Segmento on Area_Envio.CodA = Segmento.CodA\n" +
                                                            "                       where Segmento.NombreC = ?\n" +
                                                            "                       group by Area_Envio.CodO)");

        stmt.setString(1, calle);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            String CodO = rs.getString("Oficina.CodO");
            String municipio = rs.getString("Oficina.NombreM");
            int CodP = rs.getInt("Municipio.CodP");
            String provincia = rs.getString("Provincia.Nombre");

            lista.add(new Oficina(CodO, new Municipio(municipio, new Provincia(provincia, CodP))));
        }
        stmt.close();
        rs.close();

        return lista;
    }

    public static String cochesSinUtilizarPeriodo(int periodo) throws SQLException{
        // @TODO: complete este método para que muestre por pantalla una lista de los coches que no se han
        // utilizado en los últimos "periodo" días (implementar para periodo=30)
        //return lista;

        String resultado="";

        PreparedStatement stmt =conn.prepareStatement("select Coche.Matricula, Coche.Capacidad\n"
                                                        + "from Coche\n"
                                                        + "where Coche.Matricula NOT IN (\n"
                                                        + "     select Reparto.Matricula\n"
                                                        + "     from Reparto\n"
                                                        + "     where Reparto.Fecha between DATE_SUB(curdate(), INTERVAL ? day) and curdate()\n" + ")\n"
                                                        + "group by Coche.Matricula, Coche.Capacidad;");

        stmt.setInt(1, periodo);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            resultado = resultado + rs.getString("Coche.Matricula");
            resultado = resultado + " (" + rs.getString("Coche.Capacidad") + "L)\n";
        }
        stmt.close();
        rs.close();

        return resultado;
    }

    // OTRAS POSIBLES SOLUCIONES

    public static void nuevoCartero2(String DNI, String nombre, String apellidos) {
        // @TODO: complete este método para que cree un nuevo cartero en la base de datos

        Statement stmt = null;
        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(
                    "insert into Cartero(Nombre,Apellido,DNI) " +
                        "values('" + nombre + "','" + apellidos + "','" + DNI + "');"
            );
        } catch (SQLException ex) {
            System.out.println("Ha ocurido un error");
        }
    }

    public static List<Cartero> carterosRepartoCochePeriodo2(int periodo) {
        // @TODO: complete este método para que muestre por pantalla una lista de carteros que han
        // realizado un reparto con coche en el periodo comprendido por los últimos "periodo" días
        // (implementar para periodo=7)
        // Tenga en cuenta que la consulta a la base de datos le devolverá un ResultSet sobre el que deberá
        // ir iterando y creando un objeto con cada Cartero que cumpla con las condiciones,
        // y añadirlos a la lista

        List<Cartero> lista = new ArrayList<>();

        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(
                    "select Cartero.DNI, Cartero.Nombre, Cartero.Apellido\n" +
                    "from Cartero\n" +
                    "\tinner join Reparto on Reparto.DNI = Cartero.DNI\n" +
                    "where Reparto.Fecha between DATE_SUB(curdate(), INTERVAL " + periodo + " day) and curdate()\n" +
                    "group by Cartero.DNI, Cartero.Nombre, Cartero.Apellido;"
            );

            while (rs.next()) {
                String DNI = rs.getString("Cartero.DNI");
                String nombre = rs.getString("Cartero.Nombre");
                String apellidos = rs.getString("Cartero.Apellido");

                lista.add(new Cartero(DNI, nombre, apellidos));
            }
        } catch (SQLException ex) {
            System.out.println("Ha ocurido un error");
        }

        return lista;
    }

    public static List<Oficina> oficinasAsociadasCalle2(String calle) {
        // @TODO: complete este método para que muestre por pantalla una lista de las oficinas que
        // dan servicio a la C/Alcalá de Madrid.
        // Tenga en cuenta que la consulta a la base de datos le devolverá un ResultSet sobre el que deberá
        // ir iterando y creando un objeto con cada Oficina que tenga asociada algún segmento de esa calle,
        // y añadirlos a la lista

        List<Oficina> lista = new ArrayList<>();

        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(
                    "select Oficina.CodO, Oficina.NombreM, Municipio.CodP, Provincia.Nombre\n" +
                    "from Oficina\n" +
                    "\tinner join Municipio on Oficina.NombreM = Municipio.NombreM\n" +
                    "    inner join Provincia on Municipio.CodP = Provincia.CodP\n" +
                    "where Oficina.CodO in (\n" +
                    "\tselect Area_Envio.CodO\n" +
                    "    from Area_Envio\n" +
                    "\t\tinner join Segmento on Area_Envio.CodA = Segmento.CodA\n" +
                    "\twhere Segmento.NombreC = '" + calle + "'\n" +
                    "    group by Area_Envio.CodO\n" +
                    ")"
            );
            while (rs.next()) {
                String CodO = rs.getString("Oficina.CodO");
                String municipio = rs.getString("Oficina.NombreM");
                int CodP = rs.getInt("Municipio.CodP");
                String provincia = rs.getString("Provincia.Nombre");

                lista.add(new Oficina(CodO, new Municipio(municipio, new Provincia(provincia, CodP))));
            }
        } catch (SQLException ex) {
            System.out.println("Ha ocurido un error");
        }

        return lista;
    }

    public static String cochesSinUtilizarPeriodo2(int periodo) {
        // @TODO: complete este método para que muestre por pantalla una lista de los coches que no se han
        // utilizado en los últimos "periodo" días (implementar para periodo=30)

        String lista = "Lista de coches no utilizados en los ultimos " + periodo + " dias:\n";

        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(
                    "select Coche.Matricula, Coche.Capacidad\n" +
                            "from Coche\n" +
                            "where Coche.Matricula NOT IN (\n" +
                            "\tselect Reparto.Matricula\n" +
                            "\tfrom Reparto\n" +
                            "\twhere Reparto.Fecha between DATE_SUB(curdate(), INTERVAL " + periodo + " day) and curdate()\n" +
                            ")\n" +
                            "group by Coche.Matricula, Coche.Capacidad;"
            );
            while (rs.next()) {
                lista = lista + rs.getString("Coche.Matricula");
                lista = lista + " (" + rs.getString("Coche.Capacidad") + "L)\n";
            }
        } catch (SQLException ex) {
            System.out.println("Ha ocurido un error");
        }

        return lista;
    }

}
