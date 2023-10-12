package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="AreaEnvio")
public class AreaEnvio {
	
	@Id
	@Column(name = "codA") 
	private String codA;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "areaEnvioContenida")
	private AreaEnvio areaEnvioContenida;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "oficina")
	private Oficina oficina;
	
	@ManyToMany(mappedBy = "areaEnvio")
	private Set<Cartero> cartero;
	
	@OneToMany(mappedBy = "areaEnvio", cascade = CascadeType.ALL)
	private Set<AreaEnvio> areaEnvio;
	
	@OneToMany(mappedBy = "areaEnvio", cascade = CascadeType.ALL)
	private Set<Segmento> segmento;
	
	public AreaEnvio() {
		
	}

	public AreaEnvio(String codA, AreaEnvio areaEnvioContenida, Oficina oficina) {
		this.codA = codA;
		this.areaEnvioContenida = areaEnvioContenida;
		this.oficina = oficina;
	}

	public String getCodA() {
		return codA;
	}

	public void setCodA(String codA) {
		this.codA = codA;
	}

	public AreaEnvio getAreaEnvioContenida() {
		return areaEnvioContenida;
	}

	public void setAreaEnvioContenida(AreaEnvio areaEnvioContenida) {
		this.areaEnvioContenida = areaEnvioContenida;
	}

	public Oficina getOficina() {
		return oficina;
	}

	public void setOficina(Oficina oficina) {
		this.oficina = oficina;
	}
}
