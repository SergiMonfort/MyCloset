package com.camara.mycloset.model;

import javax.persistence.*;

@Entity
@Table(name = "prenda")
public class Prenda {

    @Id
    @Column(name = "id_prenda")
    Long idPrenda;

    @Column(name = "nombre_prenda")
    String nombrePrenda;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_detalle", nullable = false)
    DetallePrenda detallePrenda;

public Prenda(){
}

    public Prenda(Long idPrenda, String nombrePrenda, DetallePrenda detallePrenda) {
        this.idPrenda = idPrenda;
        this.nombrePrenda = nombrePrenda;
        this.detallePrenda = detallePrenda;
    }

    public Long getIdPrenda() {
        return idPrenda;
    }

    public void setIdPrenda(Long idPrenda) {
        this.idPrenda = idPrenda;
    }

    public String getNombrePrenda() {
        return nombrePrenda;
    }

    public void setNombrePrenda(String nombrePrenda) {
        this.nombrePrenda = nombrePrenda;
    }

    public DetallePrenda getDetallePrenda() {
        return detallePrenda;
    }

    public void setDetallePrenda(DetallePrenda detallePrenda) {
        this.detallePrenda = detallePrenda;
    }
}
