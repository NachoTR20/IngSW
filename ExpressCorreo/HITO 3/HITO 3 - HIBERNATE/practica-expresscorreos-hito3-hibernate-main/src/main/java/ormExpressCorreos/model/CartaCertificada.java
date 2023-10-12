package ormExpressCorreos.model;

import java.sql.Date;
import java.sql.Time;
import javax.persistence.*;

@Entity
@Table(name="CartaCertificada")
public class CartaCertificada {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;

	@Column(name = "urgencia")
	private String urgencia;

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
	private UsuarioIdentificado usuarioIdentificadoEnvia;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "usuarioGenericoRecibe")
	private UsuarioIdentificado usuarioIdentificadoRecibe;
	
	public CartaCertificada() {
		
	}

	public CartaCertificada(String urgencia, Date fecha, Time hora, Cartero cartero, Reparto reparto, UsuarioIdentificado usuarioIdentificadoEnvia, UsuarioIdentificado usuarioIdentificadoRecibe) {
		this.urgencia = urgencia;
		this.fecha = fecha;
		this.hora = hora;
		this.cartero = cartero;
		this.reparto = reparto;
		this.usuarioIdentificadoEnvia = usuarioIdentificadoEnvia;
		this.usuarioIdentificadoRecibe = usuarioIdentificadoRecibe;
	}

	public String getUrgencia() {
		return urgencia;
	}

	public void setUrgencia(String urgencia) {
		this.urgencia = urgencia;
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

	public UsuarioIdentificado getUsuarioIdentificado() {
		return usuarioIdentificadoEnvia;
	}

	public void setUsuarioIdentificadoEnvia(UsuarioIdentificado usuarioIdentificadoEnvia) {
		this.usuarioIdentificadoEnvia = usuarioIdentificadoEnvia;
	}

	public UsuarioIdentificado getUsuarioIndetificado_recibe() {
		return usuarioIdentificadoRecibe;
	}

	public void setUsuarioIdentificadoRecibe(UsuarioIdentificado usuarioIdentificadoRecibe) {
		this.usuarioIdentificadoRecibe = usuarioIdentificadoRecibe;
	}
}
