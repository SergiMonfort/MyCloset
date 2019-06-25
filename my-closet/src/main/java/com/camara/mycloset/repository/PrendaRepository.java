package com.camara.mycloset.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.camara.mycloset.model.Prenda;

@Repository
public interface PrendaRepository extends JpaRepository<Prenda,Long> {
	
//	@Query("SELECT P FROM Prenda P WHERE P.tipoPrenda.idTipo in (1,2) ")
//	public List<Prenda> obtenerPrendasArriba();
	
	@Query("SELECT P FROM Prenda P WHERE P.tipoPrenda.idTipo = :idTipoPrenda ")
	public List<Prenda> obtenerPorTipo(@Param("idTipoPrenda") Long idTipoPrenda);
	
}
