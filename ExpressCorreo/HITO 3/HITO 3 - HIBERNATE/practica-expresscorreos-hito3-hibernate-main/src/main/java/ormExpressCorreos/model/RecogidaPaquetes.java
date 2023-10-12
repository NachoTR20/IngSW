package ormExpressCorreos.model;

import java.sql.Date;
import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="RecogidaPaquetes")
public class RecogidaPaquetes {

	@Id
	@GeneratedValue
	@Column(name = "codR")
	private Long codR;

	@Column(name = "fecha")
	private Date fecha;

	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "cartero")
	private Cartero cartero;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "usuarioIdentificado")
	private UsuarioIdentificado usuarioIdentificado;
	
	@ManyToOne(optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "direccion")
	private Direccion direccion;
	
	@OneToMany(mappedBy = "recogidaPaquetes", cascade = CascadeType.ALL)
	private Set<Paquete> paquete;   
	
	public RecogidaPaquetes() {
		
	}

	public RecogidaPaquetes(Date fecha, Cartero cartero, UsuarioIdentificado usuarioIdentificado, Direccion direccion) {
		this.fecha = fecha;
		this.cartero = cartero;
		this.usuarioIdentificado = usuarioIdentificado;
		this.direccion = direccion;
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

	public Cartero getCartero() {
		return cartero;
	}

	public void setCartero(Cartero cartero) {
		this.cartero = cartero;
	}

	public UsuarioIdentificado getUsuarioIdentificado() {
		return usuarioIdentificado;
	}

	public void setUsuarioIdentificado(UsuarioIdentificado usuarioIdentificado) {
		this.usuarioIdentificado = usuarioIdentificado;
	}

	public Direccion getDireccion() {
		return direccion;
	}

	public void setDireccion(Direccion direccion) {
		this.direccion = direccion;
	}
}
