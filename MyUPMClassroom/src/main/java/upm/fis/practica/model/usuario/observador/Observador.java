package upm.fis.practica.model.usuario.observador;

import upm.fis.practica.model.aula.Aula;
import upm.fis.practica.model.aula.IAula;
import upm.fis.practica.model.usuario.Usuario;

import java.util.ArrayList;
import java.util.List;

public class Observador extends Usuario implements IObservador {
	private List<Aula> aulas;

	public Observador(String nombre, String apellidos, String correo, String contrasenya,String dni, ArrayList<Aula> aulas){
		super(nombre, apellidos, correo, contrasenya, dni);
		this.aulas = aulas;
	}
	public Observador(String nombre, String apellidos, String correo, String contrasenya,String dni){
		super(nombre, apellidos, correo, contrasenya, dni);
		this.aulas = new ArrayList<>();
	}



	@Override
	public String getApellidos() {
		// TODO Auto-generated method stub
		return super.getApellidos();
	}

	@Override
	public String getNombre() {
		// TODO Auto-generated method stub
		return super.getNombre();
	}

	@Override
	public String getCorreo() {
		// TODO Auto-generated method stub
		return super.getCorreo();
	}

	@Override
	public String getDNI() {
		// TODO Auto-generated method stub
		return super.getDNI();
	}

	@Override
	public String getContrasenya() {
		// TODO Auto-generated method stub
		return super.getContrasenya();
	}

	@Override
	public void login() {
		// TODO Auto-generated method stub
		return;
	}

	@Override
	public void logout() {
		// TODO Auto-generated method stub
		return;
	}


	@Override
	public String verInforme(IAula aula) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String suscribirse(IAula aula) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String toString(){
		return "nombre: " +getNombre() +" apellidos: "+ getApellidos()+" correo: "+ getCorreo()+" contrasenya: "+ getContrasenya()+ " dni: "+getDNI();
	}

}
