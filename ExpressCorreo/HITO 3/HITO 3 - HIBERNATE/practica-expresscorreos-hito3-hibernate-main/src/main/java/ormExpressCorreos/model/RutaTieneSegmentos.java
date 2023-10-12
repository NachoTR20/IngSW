package ormExpressCorreos.model;

import javax.persistence.*;

//creamos esta clase pase a que se crea sola con la relacion N:M Ruta y Segmentos, pero necesitabamos introducirle el atributo orden

@Table(name="RutaTieneSegmentos")
public class RutaTieneSegmentos {

	@Column(name = "orden", nullable = false)
	private int orden;
	
	public RutaTieneSegmentos() {
		
	}

	public RutaTieneSegmentos(int orden) {
		this.orden = orden;
	}

	public int getOrden() {
		return orden;
	}

	public void setOrden(int orden) {
		this.orden = orden;
	}

}
