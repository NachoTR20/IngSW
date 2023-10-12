package ormExpressCorreos.model;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="Provincia")
public class Provincia {

	@Id
	@Column(name = "nombre")
	private String nombre;
	
	@OneToMany(mappedBy = "provincia", cascade = CascadeType.ALL)
	private Set<Municipio> municipio;
	
	public Provincia() {
		
	}
	
	public Provincia(String nombre) {
		this.nombre = nombre;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {    
		this.nombre = nombre;
	}
	
	

}
