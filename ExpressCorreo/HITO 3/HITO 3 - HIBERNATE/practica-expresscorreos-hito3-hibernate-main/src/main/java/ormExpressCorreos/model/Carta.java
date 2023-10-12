package ormExpressCorreos.model;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;

@Entity
@Table(name="Carta")
public class Carta {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;

	@Column(name = "formato")
	private String formato;
	
	@Column(name = "fecha")
	private Date fecha;
	
	@Column(name = "hora")
	private Time hora;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "cartero")
	private Cartero cartero;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "reparto")
	private Reparto reparto; 
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="usuarioGenericoEnvia")
	private UsuarioGenerico usuarioGenericoEnvia;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "usuarioGenericoRecibe")
	private UsuarioGenerico usuarioGenericoRecibe;

	public Carta() {
		
	}

	public Carta(String formato, Date fecha, Time hora, Cartero cartero, Reparto reparto, UsuarioGenerico usuarioGenericoEnvia, UsuarioGenerico usuarioGenericoRecibe) {
		this.formato = formato;
		this.fecha = fecha;
		this.hora = hora;
		this.cartero = cartero;
		this.reparto = reparto;
		this.usuarioGenericoEnvia = usuarioGenericoEnvia;
		this.usuarioGenericoRecibe = usuarioGenericoRecibe;
	}

	public String getFormato() {
		return formato;
	}

	public void setFormato(String formato) {
		this.formato = formato;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Time getHora() {
		return hora;
	}

	public void setHora(Time hora) {
		this.hora = hora;
	}

	public Cartero getCartero() {
		return cartero;
	}

	public void setCartero(Cartero cartero) {
		this.cartero = cartero;
	}

	public Reparto getReparto() {
		return reparto;
	}

	public void setReparto(Reparto reparto) {
		this.reparto = reparto;
	}

	public UsuarioGenerico getUsuarioGenericoEnvia() {
		return usuarioGenericoEnvia;
	}

	public void setUsuarioGenericoEnvia(UsuarioGenerico usuarioGenerico) {
		this.usuarioGenericoEnvia = usuarioGenerico;
	}

	public UsuarioGenerico getUsuarioGenericoRecibe() {
		return usuarioGenericoRecibe;
	}

	public void setUsuarioGenericoRecibe(UsuarioGenerico usuarioGenericoRecibe) {
		this.usuarioGenericoRecibe = usuarioGenericoRecibe;
	}
}
