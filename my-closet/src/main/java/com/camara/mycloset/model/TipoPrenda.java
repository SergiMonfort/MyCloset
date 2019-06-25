package com.camara.mycloset.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tipo_prenda")
public class TipoPrenda {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_tipo_prenda")
	Long idTipo;

	@Column(name = "descripcion")
	String descripcion;

	public TipoPrenda() {
	}

	public TipoPrenda(Long idTipo, String descripcion) {
		super();
		this.idTipo = idTipo;
		this.descripcion = descripcion;
	}

	public Long getIdTipo() {
		return idTipo;
	}

	public void setIdTipo(Long idTipo) {
		this.idTipo = idTipo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

}
