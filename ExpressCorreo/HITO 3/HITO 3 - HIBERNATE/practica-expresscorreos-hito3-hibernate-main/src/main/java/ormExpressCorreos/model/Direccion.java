package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

// @TODO completar las anotaciones de la clase
@Entity 
@Table(name="Direccion")
public class Direccion{

    // @TODO completar las anotaciones de todos los atributos
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;
	
	@Column(name = "numero")
	private Integer numero;
	
	@Column(name = "piso")
	private Integer piso;
	
	@Column(name = "letra")
	private String letra;
	 
	@Column(name = "portal")
	private String portal;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idCalle")
	private Calle calle;
	
	@OneToMany(mappedBy = "direccion", cascade = CascadeType.ALL)
	private Set<UsuarioGenerico> usuarioGenerico;
	
	@OneToMany(mappedBy = "direccion", cascade = CascadeType.ALL)
	private Set<RecogidaPaquetes> recogidaPaquetes;
	
	public Direccion() {  
    	
	}
	
    public Direccion(int numero, int piso, String letra, String portal, Calle calle) {  // @TODO: completar
        // @TODO completar el constructor de la clase.
        //  Para ello son necesarios dos enteros con el número y el piso, y dos strings
        // con la letra y el portal
        //  Cree e inicialice el resto de atributos a los valores que considere oportunos

    	this.numero = numero;
    	this.piso = piso;
    	this.letra = letra;
    	this.portal = portal;
    	this.calle = calle;
    }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getNumero() {
		return numero;
	}

	public void setNumero(Integer numero) {
		this.numero = numero;
	}

	public Integer getPiso() {
		return piso;
	}

	public void setPiso(Integer piso) {
		this.piso = piso;
	}

	public String getLetra() {
		return letra;
	}

	public void setLetra(String letra) {
		this.letra = letra;
	}

	public String getPortal() {
		return portal;
	}

	public void setPortal(String portal) {
		this.portal = portal;
	}

	public Calle getCalle() {
		return calle;
	}

	public void setCalle(Calle calle) {
		this.calle = calle;
	}

	public String getDireccionCompleta() {
		// @TODO completar para que devuelva la dirección completa de un usuario
		String direccionCompleta = this.calle.getNombreCalle();

		if (this.numero != null)
			direccionCompleta += ", Nº" + this.numero;
		if (this.portal != null)
			direccionCompleta += ", Portal: " + this.portal;
		if (this.piso != null)
			direccionCompleta += ", " + this.piso + "º";
		if (this.letra != null)
			direccionCompleta += "-" + this.letra;

		direccionCompleta += ", " + this.calle.getMunicipio().getNombre() + ", " + this.calle.getMunicipio().getProvincia().getNombre();

		return direccionCompleta;
	}

}