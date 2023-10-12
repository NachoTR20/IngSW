package ormExpressCorreos.model;

import java.sql.Date;
import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="Reparto")
public class Reparto {

	@Id
	@GeneratedValue
	@Column(name = "codR")
	private Long codR;

	@Column(name = "fecha")
	private Date fecha;

	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "coche")
	private Coche coche;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "cartero")
	private Cartero cartero;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "ruta")
	private Ruta ruta;
	
	@OneToMany(mappedBy = "reparto", cascade = CascadeType.ALL)
	private Set<CartaCertificada> carta_certificada;
	
	@OneToMany(mappedBy = "reparto", cascade = CascadeType.ALL)
	private Set<Carta> carta; 
	
	@OneToMany(mappedBy = "reparto", cascade = CascadeType.ALL)
	private Set<Paquete> paquete; 
	
	
	public Reparto() {
		
	}

	public Reparto(Date fecha, Coche coche, Cartero cartero, Ruta ruta) {
		this.fecha = fecha;
		this.coche = coche;
		this.cartero = cartero;
		this.ruta = ruta;
	}

	public Long getCodR() {
		return codR;
	}

	public void setCodR(Long codR) {
		this.codR = codR;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Coche getCoche() {
		return coche;
	}

	public void setCoche(Coche coche) {
		this.coche = coche;
	}

	public Cartero getCartero() {
		return cartero;
	}

	public void setCartero(Cartero cartero) {
		this.cartero = cartero;
	}

	public Ruta getRutas() {
		return ruta;
	}

	public void setRutas(Ruta ruta) {
		this.ruta = ruta;
	}
}
