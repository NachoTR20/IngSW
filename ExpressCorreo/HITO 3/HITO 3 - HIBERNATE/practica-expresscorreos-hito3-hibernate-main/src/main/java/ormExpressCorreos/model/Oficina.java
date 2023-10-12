package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="Oficina")
public class Oficina {
	
	@Id
	@Column(name = "codO") 
	private String codO;
	
	@ManyToOne(optional = false)
	@JoinColumn(name = "municipio")
	private Municipio municipio;

	@OneToMany(mappedBy = "oficina", cascade = CascadeType.ALL)
	private Set<AreaEnvio> areaEnvio;
	
	@OneToMany(mappedBy = "oficina", cascade = CascadeType.ALL)
	private Set<Coche> coche;
	
	@ManyToMany()
	@JoinTable(name = "trabaja")
	private Set<Cartero> cartero; 
	
	@ManyToMany(mappedBy = "oficina")
	private Set<CentroClasificacion> centroClasificacion;

	public Oficina() {
		
	}

	public Oficina(String codO, Municipio municipio) {
		this.codO = codO;
		this.municipio = municipio;
	}

	public String getCodO() {
		return codO;
	}

	public void setCodO(String codO) {
		this.codO = codO;
	}

	public Municipio getMunicipio() {
		return municipio;
	}

	public void setMunicipio(Municipio municipio) {
		this.municipio = municipio;
	}
	
	

}
