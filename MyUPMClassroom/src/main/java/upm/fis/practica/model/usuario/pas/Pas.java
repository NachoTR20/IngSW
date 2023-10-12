package upm.fis.practica.model.usuario.pas;

import upm.fis.practica.model.usuario.Usuario;

public class Pas extends Usuario implements IPas{

    private String codigopersonal;
    private long anio;

    public Pas(String nombre, String apellidos, String correo, String contrasenya, String dni, String codigopersonal, long anio) {
        super(nombre, apellidos, correo, contrasenya, dni);
        this.anio = anio;
        this.codigopersonal = codigopersonal;
    }



    public String getCodigopersonal() {
        return codigopersonal;
    }

    public long getAnio() {
        return anio;
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
    public void login() {
        super.login();
    }

    @Override
    public void logout() {
        super.logout();
    }

    @Override
    public String getContrasenya() {
        return super.getContrasenya();
    }
}
