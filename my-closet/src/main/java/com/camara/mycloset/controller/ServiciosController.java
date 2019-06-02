package com.camara.mycloset.controller;

import com.camara.mycloset.model.DetallePrenda;
import com.camara.mycloset.repository.DetallePrendaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ServiciosController {

    @Autowired
    DetallePrendaRepository detallePrendaRepository;


    @GetMapping("/lista")
    public List<DetallePrenda> lista(){
        return detallePrendaRepository.findAll();
    }
}
