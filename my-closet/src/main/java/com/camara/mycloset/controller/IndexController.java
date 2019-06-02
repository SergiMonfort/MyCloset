package com.camara.mycloset.controller;

import com.camara.mycloset.repository.DetallePrendaRepository;
import com.camara.mycloset.repository.PrendaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class IndexController {

    // inject via application.properties
    @Value("${app.nombre.titulo:test}")
    private String titulo = "";

    @Autowired
    DetallePrendaRepository detallePrendaRepository;

    @Autowired
    PrendaRepository prendaRepository;

    @RequestMapping("/")
    public String welcome(Map<String, Object> model) {

        model.put("titulo", titulo);
        model.put("clave","Hola");
        model.put("listaDetalle",detallePrendaRepository.findAll());
        model.put("prendas", prendaRepository.findAll());
        return "index";
    }

    @RequestMapping("/qwu")
    public String otro(Map<String, Object> model){
return "otro";
    }
}
