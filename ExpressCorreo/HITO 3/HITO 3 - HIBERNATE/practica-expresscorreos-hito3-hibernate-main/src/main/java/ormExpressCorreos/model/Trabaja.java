package ormExpressCorreos.model;

import java.sql.Date;
import javax.persistence.*;

@Table(name="Trabaja")
public class Trabaja {
	
	@Column(name = "fecha")
	private Date fecha;
	
	public Trabaja() {
		
	}

	public Trabaja(Date fecha) {
		this.fecha = fecha;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
}
