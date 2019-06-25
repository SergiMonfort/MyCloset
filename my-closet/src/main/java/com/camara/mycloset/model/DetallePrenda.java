package com.camara.mycloset.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "detalle_prenda")
public class DetallePrenda {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id_detalle")
    Long idDetalle;

    @Column(name = "detalle")
    String detalle;

    public DetallePrenda() {
    }

    public DetallePrenda(Long idDetalle, String detalle) {
        this.idDetalle = idDetalle;
        this.detalle = detalle;
    }

    public Long getIdDetalle() {
        return idDetalle;
    }

    public void setIdDetalle(Long idDetalle) {
        this.idDetalle = idDetalle;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }
}
