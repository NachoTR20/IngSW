package upm.fis.practica.model.usuario.pas;

public interface IPas {

    public String getCodigopersonal();

    public long getAnio();

    public String getApellidos();

    public String getNombre();

    public String getCorreo();

    public String getDNI();

    public void login();

    public void logout();

    public String getContrasenya();
}
