package ormExpressCorreos.model;

import java.sql.Date;
import java.sql.Time;
import javax.persistence.*;

@Entity
@Table(name="Paquete")
public class Paquete {

	@Id
	@Column(name = "id")
	private Long id;

	@Column(name = "dimension")
	private String dimension;

	@Column(name = "fecha")
	private Date fecha;

	@Column(name = "hora")
	private Time hora;
	
	@Column(name = "comentario")
	private String comentario;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name="recogidaPaquetes")
	private RecogidaPaquetes recogidaPaquetes;
	
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
	
	public Paquete() {
		
	}

	public Paquete(String dimension, Date fecha, Time hora, String comentario, RecogidaPaquetes recogidaPaquetes, Cartero cartero, Reparto reparto, UsuarioGenerico usuarioGenericoEnvia, UsuarioGenerico usuarioGenericoRecibe) {
		this.dimension = dimension;
		this.fecha = fecha;
		this.hora = hora;
		this.comentario = comentario;
		this.recogidaPaquetes = recogidaPaquetes;
		this.cartero = cartero;
		this.reparto = reparto;
		this.usuarioGenericoEnvia = usuarioGenericoEnvia;
		this.usuarioGenericoRecibe = usuarioGenericoRecibe;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDimension() {
		return dimension;
	}

	public void setDimension(String dimension) {
		this.dimension = dimension;
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

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public RecogidaPaquetes getRecogidaPaquetes() {
		return recogidaPaquetes;
	}

	public void setRecogidaPaquetes(RecogidaPaquetes recogidaPaquetes) {
		this.recogidaPaquetes = recogidaPaquetes;
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

	public void setUsuarioGenericoEnvia(UsuarioGenerico usuarioGenericoEnvia) {
		this.usuarioGenericoEnvia = usuarioGenericoEnvia;
	}

	public UsuarioGenerico getUsuarioGenericoRecibe() {
		return usuarioGenericoRecibe;
	}

	public void setUsuarioGenericoRecibe(UsuarioGenerico usuarioGenericoRecibe) {
		this.usuarioGenericoRecibe = usuarioGenericoRecibe;
	}
}
