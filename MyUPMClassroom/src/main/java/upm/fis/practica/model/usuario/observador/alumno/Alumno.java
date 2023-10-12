package upm.fis.practica.model.usuario.observador.alumno;

import servidor.Autenticacion;
import upm.fis.practica.model.aula.Aula;
import upm.fis.practica.model.aula.IAula;
import upm.fis.practica.model.usuario.observador.Observador;

import java.util.ArrayList;
import java.util.List;

public class Alumno extends Observador implements IAulmno{
    private String nummatricula;


    public Alumno(String nombre, String apellidos, String correo, String contrasenya, String dni, ArrayList<Aula> aulas, String nummatricula) {
        super(nombre, apellidos, correo, contrasenya, dni, aulas);
        this.nummatricula= nummatricula;
    }
    public Alumno(String nombre, String apellidos, String correo, String contrasenya, String dni, String nummatricula) throws IllegalArgumentException, IllegalAccessException {
        super(nombre, apellidos, correo, contrasenya, dni);
        this.nummatricula=nummatricula;
        Autenticacion autenticacion = new Autenticacion();
        if(dni.length() != 9 || dni.isEmpty()) {
            throw new IllegalArgumentException("El dni es invalido");
        } else if(nombre.length()<1 || nombre.length()>20){
            throw new IllegalArgumentException("El nombre es invalido");
        } else if(apellidos.length()<1 || apellidos.length()>40){
            throw new IllegalArgumentException("Los apellidos son invalidos");
        } else if(!autenticacion.existeCuentaUPM(correo)){
            throw new IllegalAccessException("El correo es invalido");
            /*try {
                throw new IllegalAccessException("El correo es invalido");
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }*/
        } else if(contrasenya.length()<6){
            throw new IllegalArgumentException("La contraseña es invalida");
        } else if(nummatricula.length()!=6){
            throw new IllegalArgumentException("El numero de matricula es invalido");
        }


    }


    public String getNummatricula() {
        return nummatricula;
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
