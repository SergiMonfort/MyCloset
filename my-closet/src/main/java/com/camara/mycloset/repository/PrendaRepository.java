package com.camara.mycloset.repository;

import com.camara.mycloset.model.Prenda;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PrendaRepository extends JpaRepository<Prenda,Long> {
}
