package upm.fis.practica.model.usuario.observador.pdi;

import upm.fis.practica.model.aula.Aula;
import upm.fis.practica.model.aula.IAula;
import upm.fis.practica.model.usuario.observador.Observador;

import java.util.ArrayList;

public class Pdi extends Observador implements IPdi {

    private String codigotrabajador;
    private TCategoria categoria;

    public Pdi(String nombre, String apellidos, String correo, String contrasenya, String dni, ArrayList<Aula> aulas, String codigotrabajador, TCategoria categoria) {
        super(nombre, apellidos, correo, contrasenya, dni,aulas);
        this.categoria = categoria;
        this.codigotrabajador = codigotrabajador;
    }
    public Pdi(String nombre, String apellidos, String correo, String contrasenya, String dni, String codigotrabajador, TCategoria categoria){
        super(nombre, apellidos, correo, contrasenya, dni);
        this.categoria = categoria;
        this.codigotrabajador = codigotrabajador;
    }



    public String getCodigotrabajador() {
        return codigotrabajador;
    }

    public TCategoria getCategoria() {
        return categoria;
    }

    @Override
    public String getApellidos() {
        return super.getApellidos();
    }

    @Override
    public String getNombre() {
        return super.getNombre();
    }

    @Override
    public String getCorreo() {
        return super.getCorreo();
    }

    @Override
    public String getDNI() {
        return super.getDNI();
    }

    @Override
    public String getContrasenya() {
        return super.getContrasenya();
    }

    @Override
    public void login() {
        super.login();
    }

    @Override
    public void logout() {
        super.logout();
    }

    @Override
    public String verInforme(IAula aula) {
        return super.verInforme(aula);
    }

    @Override
    public String suscribirse(IAula aula) {
        return super.suscribirse(aula);
    }
}
