package com.camara.mycloset.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.camara.mycloset.model.TipoPrenda;

@Repository
public interface TipoPrendaRepository extends JpaRepository<TipoPrenda, Long> {

}
