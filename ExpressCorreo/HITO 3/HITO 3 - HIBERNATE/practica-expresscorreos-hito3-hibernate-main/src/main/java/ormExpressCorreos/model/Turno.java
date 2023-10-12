package ormExpressCorreos.model;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name="Turno")
public class Turno {
	
	@Id
	@Column(name = "tipo") 
	private String tipo;
	
	@Column(name = "horario")
	private String horario;
	
	@ManyToMany()
	@JoinTable(name="trabaja")
	private Set<Cartero> cartero;     
	
	public Turno() {
		
	}

	public Turno(String tipo, String horario) {
		this.tipo = tipo;
		this.horario = horario;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}
}
