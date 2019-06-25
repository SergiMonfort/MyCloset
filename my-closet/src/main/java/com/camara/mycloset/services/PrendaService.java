package com.camara.mycloset.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camara.mycloset.model.Prenda;
import com.camara.mycloset.repository.PrendaRepository;

@Service
public class PrendaService {

	@Autowired
	private PrendaRepository prendaRepository;
	
//	public List<Prenda> obtenerPrendasArriba(){
//		return prendaRepository.obtenerPrendasArriba();
//	}
	
	public List<Prenda> obtenerPorTipo(Long idTipo){
		return prendaRepository.obtenerPorTipo(idTipo);
	}
	
}
