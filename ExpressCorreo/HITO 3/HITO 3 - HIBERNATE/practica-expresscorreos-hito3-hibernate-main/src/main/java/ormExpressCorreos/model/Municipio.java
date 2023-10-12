package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="Municipio")
public class Municipio {

	@Id
	@Column(name = "nombre")
	private String nombre;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name="provincia")
	private Provincia provincia;
	
	@OneToMany(mappedBy = "municipio", cascade = CascadeType.ALL)
	private Set<Calle> calle;
	
	@OneToMany(mappedBy = "municipio", cascade = CascadeType.ALL)
	private Set<Oficina> oficina;
	
	@ManyToMany(mappedBy = "municipio")
	private Set<CentroClasificacion> centroClasificacion;
	
	public Municipio() {
		
	}
	
	public Municipio(String nombre, Provincia provincia) {
		this.nombre = nombre;
		this.provincia = provincia;
	} 

	public String getNombre() { 
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Provincia getProvincia() {
		return provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}
	

}
