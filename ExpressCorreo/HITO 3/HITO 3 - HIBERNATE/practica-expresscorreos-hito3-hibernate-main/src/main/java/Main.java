import ormExpressCorreos.Controller;
import ormExpressCorreos.model.*;

import java.sql.SQLException;

public class Main {

    public static void main (String [] args) {
        try {
            Controller controlador= new Controller();

            // @TODO añada las llamadas a las funciones de la clase Controller.java necesarias
            // para la creación del usuario identificado y la direccion.

            Provincia provincia = controlador.createProvincia("Madrid");
            Municipio municipio = controlador.createMunicipio("Madrid", provincia);
            Calle calle = controlador.createCalle("Calle de Guzman el Bueno", municipio);
            Direccion direccion = controlador.createDireccion(32, 1, "B", null, calle);

            UsuarioGenerico usuario = controlador.createUsuarioGenerico("Manolo", "Garcia", direccion);
            UsuarioIdentificado usuarioIdentificado = controlador.createUsuarioIdentificado("00000000A", "manolito54@gmail.com", usuario, null);

            if(usuarioIdentificado != null && direccion != null) {
                System.out.println("Se ha creado el usuario identificado " + usuario.getNombre() + " con DNI "
                        + usuarioIdentificado.getDNI() + " que vive en " + direccion.getDireccionCompleta());
            }

            controlador.getSession().close();
        } catch(SQLException e) {
            System.err.println("Se ha producido un error en la conexión con la base de datos");
            e.printStackTrace();
        }
    }
}