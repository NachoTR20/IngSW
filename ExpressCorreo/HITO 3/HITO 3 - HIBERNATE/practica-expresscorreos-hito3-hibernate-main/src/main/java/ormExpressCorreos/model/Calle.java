package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name = "Calle")
public class Calle {

	@Id
	@GeneratedValue
	@Column(name = "idCalle")
	private Long idCalle;

	@Column(name = "nombreCalle") 
	private String nombreCalle; 

	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "nombreMunicipio")
	private Municipio municipio;
	
	@OneToMany(mappedBy = "calle", cascade = CascadeType.ALL)
	private Set<Direccion> direccion;
	
	@OneToMany(mappedBy = "calle", cascade = CascadeType.ALL)
	private Set<Segmento> segmento;
	
	public Calle() {
		
	}
	
	public Calle(String nombreCalle, Municipio municipio) {
		this.nombreCalle = nombreCalle;
		this.municipio = municipio;
	}

	public Long getIdCalle() {
		return idCalle;
	}

	public void setIdCalle(Long idCalle) {
		this.idCalle = idCalle;
	}

	public String getNombreCalle() {
		return nombreCalle;
	}

	public void setNombreCalle(String nombreCalle) {
		this.nombreCalle = nombreCalle;
	}

	public Municipio getMunicipio() {
		return municipio;
	}

	public void setMunicipio(Municipio municipio) {
		this.municipio = municipio;
	}

}
