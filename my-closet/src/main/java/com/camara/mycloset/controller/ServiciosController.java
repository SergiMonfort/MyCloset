package com.camara.mycloset.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.camara.mycloset.model.Armario;
import com.camara.mycloset.model.Prenda;
import com.camara.mycloset.services.ArmarioService;
import com.camara.mycloset.services.PrendaService;

@RestController
public class ServiciosController {

	@Autowired
	private PrendaService prendaService;

	@Autowired
	private ArmarioService armarioService;

//    @GetMapping("/lista")
//    public List<DetallePrenda> lista(){
//        return detallePrendaRepository.findAll();
//    }

	@GetMapping("/prendasPorTipo")
	public List<Prenda> prendasPorTipo(@RequestParam("idTipoPrenda") String idTipoPrenda) {
		return prendaService.obtenerPorTipo(Long.valueOf(idTipoPrenda));
	}

	@GetMapping("/armarioPorUsuario")
	public List<Armario> obtenerPorUsuario(@RequestParam("idUsuario") String idUsuario) {
		List<Armario> lista = armarioService.obtenerPorUsuario(Long.valueOf(idUsuario));
		return lista;
	}

	@PostMapping("/agregarPrenda")
	public String agregarPrenda(@RequestParam("idUsuario") String idUsuario,
			@RequestParam("idPrenda") String idPrenda) {
		try {

			armarioService.agregarPrenda(Long.valueOf(idUsuario), Long.valueOf(idPrenda));
			return "La prenda se agrego correctamente";
		} catch (Exception e) {
			System.err.println(e);
			return "Hubo un problema al agregar la prenda";
		}

	}

	@DeleteMapping("/eliminarPrenda")
    public String eliminarPrenda(@RequestParam("idArmario") String idArmario) {
    	try {    		
    		armarioService.eliminarPrenda(Long.valueOf(idArmario));
    		return "La prenda se elimino correctamente";
    	} catch (Exception e) {
    		return "Hubo un problema al eliminar la prenda";
    	}
    }

}
