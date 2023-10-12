package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="Segmento")
public class Segmento {
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;
	
	@Column(name = "inicio")
	private int inicio;
	
	@Column(name = "fin")
	private int fin;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "areaEnvio")
	private AreaEnvio areaEnvio;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idCalle")
	private Calle calle;
	
	@ManyToMany()
	@JoinTable(name = "rutaTieneSegmentos")
	private Set<Ruta> rutas;

	public Segmento() {
		
	}

	public Segmento(int inicio, int fin, AreaEnvio areaEnvio, Calle calle) {
		this.inicio = inicio;
		this.fin = fin;
		this.areaEnvio = areaEnvio;
		this.calle = calle;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getInicio() {
		return inicio;
	}

	public void setInicio(int inicio) {
		this.inicio = inicio;
	}

	public int getFin() {
		return fin;
	}

	public void setFin(int fin) {
		this.fin = fin;
	}

	public AreaEnvio getAreaEnvio() {
		return areaEnvio;
	}

	public void setAreaEnvio(AreaEnvio areaEnvio) {
		this.areaEnvio = areaEnvio;
	}

	public Calle getCalle() {
		return calle;
	}

	public void setCalle(Calle calle) {
		this.calle = calle;
	}
}
