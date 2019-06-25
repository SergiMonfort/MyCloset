package com.camara.mycloset.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "armario")
public class Armario {
	@Id
	@Column(name = "id_armario")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idArmario;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_usuario", nullable = false)
	private Usuario usuario;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_prenda", nullable = false)
	private Prenda prenda;
	
	

	public Armario() {
		super();
	}

	public Armario(Long idArmario, Usuario usuario, Prenda prenda) {
		super();
		this.idArmario = idArmario;
		this.usuario = usuario;
		this.prenda = prenda;
	}

	public Long getIdArmario() {
		return idArmario;
	}

	public void setIdArmario(Long idArmario) {
		this.idArmario = idArmario;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Prenda getPrenda() {
		return prenda;
	}

	public void setPrenda(Prenda prenda) {
		this.prenda = prenda;
	}
	
	
}
