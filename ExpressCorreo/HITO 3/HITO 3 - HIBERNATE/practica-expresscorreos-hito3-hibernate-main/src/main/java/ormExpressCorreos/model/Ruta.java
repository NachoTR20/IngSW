package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="Ruta")
public class Ruta {
	
	@Id
	@GeneratedValue
	@Column(name = "codR") 
	private Long codR;
	
	@ManyToMany(mappedBy = "rutas")
	private Set<Segmento> segmento;
	
	@OneToMany(mappedBy= "ruta", cascade = CascadeType.ALL)
	private Set<Reparto> reparto;

	public Ruta() {
	}

	public Ruta(Long codR) {
		this.codR = codR;
	}

	public Long getCodR() {
		return codR;
	}

	public void setCodR(Long codR) {
		this.codR = codR;
	}
	
}
