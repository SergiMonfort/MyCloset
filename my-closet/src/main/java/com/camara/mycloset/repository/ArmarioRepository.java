package com.camara.mycloset.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.camara.mycloset.model.Armario;

public interface ArmarioRepository extends JpaRepository<Armario, Long> {
	@Query("SELECT A FROM Armario A WHERE A.usuario.idUsuario = :idUsuario")
	public List<Armario> obtenerPorUsuario(@Param("idUsuario") Long idUsuario);
}
