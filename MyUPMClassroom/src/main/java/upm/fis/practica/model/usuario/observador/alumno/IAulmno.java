package upm.fis.practica.model.usuario.observador.alumno;

import upm.fis.practica.model.aula.IAula;

public interface IAulmno {

    public String getNummatricula();

    public String getApellidos();

    public String getNombre();

    public String getCorreo();

    public String getDNI();

    public String getContrasenya();

    public void login();

    public void logout();

    public String verInforme(IAula aula);

    public String suscribirse(IAula aula);
}
