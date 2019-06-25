package com.camara.mycloset.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camara.mycloset.model.TipoPrenda;
import com.camara.mycloset.repository.TipoPrendaRepository;

@Service
public class TipoPrendaService {

	@Autowired
	private TipoPrendaRepository tipoPrendaRepository;
	
	public List<TipoPrenda> obtenerTodos(){
		return tipoPrendaRepository.findAll();
	}
	
}
