package com.camara.mycloset.repository;

import com.camara.mycloset.model.DetallePrenda;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DetallePrendaRepository extends JpaRepository<DetallePrenda,Long> {

    @Query("SELECT D FROM DetallePrenda D WHERE D.idDetalle = :identificador")
    DetallePrenda obtenerDetallePrenda(@Param("identificador") Long idDetalle);

}
