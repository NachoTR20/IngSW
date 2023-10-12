package upm.fis.practica.model.usuario.observador.pdi;

import upm.fis.practica.model.aula.IAula;

public interface IPdi {

    public String getCodigotrabajador();

    public TCategoria getCategoria();

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
