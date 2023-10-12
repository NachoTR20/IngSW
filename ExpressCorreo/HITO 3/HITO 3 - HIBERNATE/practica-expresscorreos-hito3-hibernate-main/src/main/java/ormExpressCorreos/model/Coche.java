package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="Coche")
public class Coche {
	
	@Id
	@Column(name = "matricula")
	private String matricula;
	
	@Column(name = "capacidad")
	private String capacidad;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "oficina")
	private Oficina oficina;
	
	@OneToMany(mappedBy = "coche", cascade = CascadeType.ALL)
	private Set<Reparto> reparto;
	
	public Coche() {
		
	}

	public Coche(String matricula, String capacidad, Oficina oficina) {
		this.matricula = matricula;
		this.capacidad = capacidad;
		this.oficina = oficina;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public String getCapacidad() {
		return capacidad;
	}

	public void setCapacidad(String capacidad) {
		this.capacidad = capacidad;
	} 

}
