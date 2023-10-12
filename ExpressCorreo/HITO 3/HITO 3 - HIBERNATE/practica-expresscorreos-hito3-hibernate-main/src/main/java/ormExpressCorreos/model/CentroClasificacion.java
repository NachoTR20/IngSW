package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="CentroClasificacion")
public class CentroClasificacion {
	
	@Id
	@GeneratedValue
	@Column(name = "codCC") 
	private Long codCC;
	
	@Column(name = "maxC")
	private int maxC;
	
	@Column(name = "maxP")
	private int maxP;
	
	@Column(name = "nombre")
	private String nombre;
	
	@ManyToMany()
	@JoinTable(name="OficinaContactoCentroClasificacion")
	private Set<Oficina> oficina;
	
	@ManyToMany()
	@JoinTable(name="MunicipioPerteneceCentroClasificacion")
	private Set<Municipio> municipio;
	
	public CentroClasificacion() {
		
	}

	public CentroClasificacion(int maxC, int maxP, String nombre) {
		this.maxC = maxC;
		this.maxP = maxP;
		this.nombre = nombre;
	}

	public Long getCodCC() {
		return codCC;
	}

	public void setCodCC(Long codCC) {
		this.codCC = codCC;
	}

	public int getMaxC() {
		return maxC;
	}

	public void setMaxC(int maxC) {
		this.maxC = maxC;
	}

	public int getMaxP() {
		return maxP;
	}

	public void setMaxP(int maxP) {
		this.maxP = maxP;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}
