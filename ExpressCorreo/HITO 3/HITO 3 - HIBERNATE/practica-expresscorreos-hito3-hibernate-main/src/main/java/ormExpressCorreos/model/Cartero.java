package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="Cartero")
public class Cartero {

	@Id
	@Column(name = "DNI")
	private String DNI;

	@Column(name = "nombre")
	private String nombre;
	
	@Column(name = "apellido")
	private String apellido;

	@ManyToMany()
	@JoinTable(name="CarteroAsignadoAreaEnvio")
	private Set<AreaEnvio> areaEnvio;
	
	@ManyToMany(mappedBy="cartero") 
	private Set<Oficina> oficina;
	
	@ManyToMany(mappedBy="cartero") 
	private Set<Turno> turno;

	@OneToMany(mappedBy = "cartero", cascade = CascadeType.ALL)
	private Set<CartaCertificada> carta_certificada;
	
	@OneToMany(mappedBy = "cartero", cascade = CascadeType.ALL)
	private Set<Carta> carta;
	
	@OneToMany(mappedBy = "cartero", cascade = CascadeType.ALL)
	private Set<Paquete> paquete; 
	
	@OneToMany(mappedBy = "cartero", cascade = CascadeType.ALL)
	private Set<Reparto> reparto;   
	
	@OneToMany(mappedBy = "cartero", cascade = CascadeType.ALL)
	private Set<RecogidaPaquetes> recogida_paquetes;
	
	public Cartero() {
		
	}

	public Cartero(String DNI, String nombre, String apellido) {
		this.DNI = DNI;
		this.nombre = nombre;
		this.apellido = apellido;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getDNI() {
		return DNI;
	}

	public void setDNI(String dNI) {
		DNI = dNI;
	}

}
