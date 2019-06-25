package com.camara.mycloset.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camara.mycloset.model.Armario;
import com.camara.mycloset.model.Prenda;
import com.camara.mycloset.model.Usuario;
import com.camara.mycloset.repository.ArmarioRepository;
import com.camara.mycloset.repository.PrendaRepository;
import com.camara.mycloset.repository.UsuarioRepository;

@Service
public class ArmarioService {

	@Autowired
	private ArmarioRepository armarioRepository;
	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@Autowired
	private PrendaRepository prendaRepository;

	public List<Armario> obtenerPorUsuario(Long idUsuario) {
		List<Armario> lista = armarioRepository.obtenerPorUsuario(idUsuario);
		return lista;
	}
	
	public void agregarPrenda(Long idUsuario,Long idPrenda) {
		final Optional<Usuario> usuarioActual = usuarioRepository.findById(idUsuario);
		final Optional<Prenda> prenda = prendaRepository.findById(idPrenda);
		Armario nuevo = new Armario(null, usuarioActual.get(), prenda.get());
		armarioRepository.saveAndFlush(nuevo);
	}
	
	public void eliminarPrenda(Long idArmario) {
		//Asi se haria cargando la entidad y eliminandola
//		Prenda prenda = prendaRepository.getOne(idArmario);
//		prendaRepository.delete(prenda);
		
		//Asi eliminamos directamente por ID
		armarioRepository.deleteById(idArmario);
	}
}
