package com.camara.mycloset.model;

import javax.persistence.*;

@Entity
@Table(name = "prenda")
public class Prenda {

	@Id
	@Column(name = "id_prenda")
	private Long idPrenda;

//	@Column(name = "nombre_prenda")
//	private String nombrePrenda;

//	@ManyToOne(fetch = FetchType.EAGER)
//	@JoinColumn(name = "id_detalle", nullable = false)
//	DetallePrenda detallePrenda;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_tipo_prenda", nullable = false)
	private TipoPrenda tipoPrenda;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_color", nullable = false)
	private Color color;

	public Prenda() {
	}

	public Prenda(Long idPrenda, TipoPrenda tipoPrenda, Color color) {
		this.idPrenda = idPrenda;
		this.tipoPrenda = tipoPrenda;
		this.color = color;
	}

	public Long getIdPrenda() {
		return idPrenda;
	}

	public void setIdPrenda(Long idPrenda) {
		this.idPrenda = idPrenda;
	}




	public TipoPrenda getTipoPrenda() {
		return tipoPrenda;
	}

	public void setTipoPrenda(TipoPrenda tipoPrenda) {
		this.tipoPrenda = tipoPrenda;
	}

	public Color getColor() {
		return color;
	}

	public void setColor(Color color) {
		this.color = color;
	}
}
