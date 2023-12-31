package upm.fis.practica.model.aula;
//
//
//  Generated by StarUML(tm) Java Add-In
//
//  @ Project : GestionGR
//  @ File Name : IAula.java
//  @ Date : 11/05/2022
//  @ Author : 
//
//


import upm.fis.practica.model.usuario.observador.Observador;

import java.util.List;

public interface IAula {

	public List<Observador> getObservadores();

	public String getNombreAula();
	
	public String getId();
	
	public double getSuperficie();
	
	public long getAforo();
	
	public TAula getTipo();
	
	public void setNombreAula(String n);
	
	public void setId(String n);
	
	public void setSuperficie(double n);
	
	public void setAforo(long n);
	
	public void setTipoAula(TAula n);
	
}
