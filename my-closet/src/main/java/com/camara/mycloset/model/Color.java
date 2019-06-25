package com.camara.mycloset.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "color")
public class Color {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_color")
	Long idColor;

	@Column(name = "nombre_color")
	String nombreColor;

	public Color() {
	}

	public Color(Long idColor, String nombreColor) {
		super();
		this.idColor = idColor;
		this.nombreColor = nombreColor;
	}

	public Long getIdColor() {
		return idColor;
	}

	public void setIdColor(Long idColor) {
		this.idColor = idColor;
	}

	public String getNombreColor() {
		return nombreColor;
	}

	public void setNombreColor(String nombreColor) {
		this.nombreColor = nombreColor;
	}

}
