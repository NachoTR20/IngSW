package upm.fis.practica.model.usuario;

import spark.Request;
import spark.Response;
import upm.fis.practica.model.usuario.observador.alumno.Alumno;

public class Usuario implements IUsuario {

	private String nombre;
	private String apellidos;
	private String correo;
	private String contrasenya;
	private String dni;

	public Usuario(String nombre, String apellidos, String correo, String contrasenya,String dni){
		this.nombre = nombre;
		this.apellidos  = apellidos;
		this.contrasenya = contrasenya;
		this.correo = correo;
		this.dni = dni;
	}



	@Override
	public String getApellidos() { return apellidos; }

	@Override
	public String getNombre() { return nombre; }

	@Override
	public String getCorreo() { return correo; }

	@Override
	public String getDNI() { return dni; }


	@Override
	public void login() {

	}
	@Override
	public void logout() {

	}
	@Override
	public String getContrasenya() { return contrasenya; }



	
	
}
