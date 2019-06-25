package com.camara.mycloset.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camara.mycloset.model.Usuario;
import com.camara.mycloset.repository.UsuarioRepository;

@Service
public class UsuarioService {
	@Autowired
	UsuarioRepository usuarioRepository;
	
	public Usuario existeUsuario (String usuario, String contrasenia) {
		return usuarioRepository.existeUsuario(usuario, contrasenia);
	}
	
	public Usuario nuevoUsuario(String usuario, String contrasenia, String nombre, String apellidos, String email) {
		Usuario nuevoUsuario = new Usuario();

		nuevoUsuario.setUsuario(usuario);
		nuevoUsuario.setContrasenia(contrasenia);
		nuevoUsuario.setNombre(nombre);
		nuevoUsuario.setApellidos(apellidos);
		nuevoUsuario.setEmail(email);
		return usuarioRepository.saveAndFlush(nuevoUsuario);
	}
}
