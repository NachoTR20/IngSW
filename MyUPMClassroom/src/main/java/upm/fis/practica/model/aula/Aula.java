package upm.fis.practica.model.aula;

import upm.fis.practica.model.usuario.Usuario;
import upm.fis.practica.model.usuario.observador.Observador;

import java.util.ArrayList;
import java.util.List;

public class Aula implements IAula {
	private String nombreaula;
	private String id;
	private double superficie;
	private long aforo;
	private TAula tipoAula;
	private List<Observador> observadores;
	
	public Aula(String nombreaula, String id, double superficie, long aforo, TAula tipoAula) {
		this.nombreaula=nombreaula;
		this.id=id;
		this.superficie=superficie;
		this.aforo=aforo;
		this.tipoAula=tipoAula;
		this.observadores = new ArrayList<>();
	}
	public Aula(String nombreaula, String id, double superficie, long aforo, TAula tipoAula, ArrayList<Observador> observadores) {
		this.nombreaula=nombreaula;
		this.id=id;
		this.superficie=superficie;
		this.aforo=aforo;
		this.tipoAula=tipoAula;
		this.observadores = observadores;
	}

	@Override
	public String getNombreAula() {
		return nombreaula;
	}

	@Override
	public String getId() {
		return id;
	}

	@Override
	public double getSuperficie() {
		return superficie;
	}

	@Override
	public long getAforo() {
		return aforo;
	}

	@Override
	public TAula getTipo() {
		return tipoAula;
	}

	public List<Observador> getObservadores() {
		return observadores;
	}

	@Override
	public void setNombreAula(String n) {
		this.nombreaula=n;
		
	}

	@Override
	public void setId(String n) {
		this.id=n;
		
	}

	@Override
	public void setSuperficie(double n) {
		this.superficie=n;
		
	}

	@Override
	public void setAforo(long n) {
		this.aforo=n;
		
	}

	@Override
	public void setTipoAula(TAula n) {
		this.tipoAula=n;
		
	}
	@Override
	public String toString(){
		return "nombreaula: " +nombreaula +" id: "+ id+" superficie: "+ superficie+" aforo: "+ aforo+ " tipo aula: "+tipoAula.toString()+" suscritos: "+ observadores.toString();
	}
	


}
