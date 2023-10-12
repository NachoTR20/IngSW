package upm.fis.practica.model.usuario.observador;

import upm.fis.practica.model.aula.IAula;
import upm.fis.practica.model.usuario.IUsuario;

public interface IObservador extends IUsuario{
	public String verInforme(IAula aula);
	public String suscribirse(IAula aula);
}

