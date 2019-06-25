package com.camara.mycloset.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.camara.mycloset.model.Usuario;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

	@Query("SELECT U FROM Usuario U WHERE U.usuario = :user AND U.contrasenia = :pass")
	Usuario existeUsuario(@Param("user") String usuario, @Param("pass") String contrasenia);

}
