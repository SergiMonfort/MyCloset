package com.camara.mycloset.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.camara.mycloset.model.Usuario;
import com.camara.mycloset.repository.DetallePrendaRepository;
import com.camara.mycloset.services.PrendaService;
import com.camara.mycloset.services.TipoPrendaService;
import com.camara.mycloset.services.UsuarioService;

@Controller
@Scope("session")
public class IndexController {

	// inject via application.properties
	@Value("${app.nombre.titulo:test}")
	private String titulo = "";

	@Autowired
	DetallePrendaRepository detallePrendaRepository;
	
	@Autowired
	PrendaService prendasService;

	@Autowired
	UsuarioService usuarioService;
	
	@Autowired
	private TipoPrendaService tipoPrendaService;

	@RequestMapping("/")
	public String welcome(HttpServletRequest request, Map<String, Object> model) {

		String url = "login";
		try {
			Usuario user = (Usuario) request.getSession().getAttribute("usuario");
			if (user != null) {
				url = "index";
				model.put("titulo", titulo);
				model.put("clave", "Hola");
				model.put("listaDetalle", detallePrendaRepository.findAll());
//				model.put("prendas", prendaRepository.findAll());
			} else {
				url = "login";
			}

		} catch (Exception e) {
			url = "login";
		}

		return url;
	}

	@RequestMapping("/registrar")
	public String registrar(HttpServletRequest request, @RequestParam("usuario") String usuario,
			@RequestParam("email") String email, @RequestParam("contrasenia") String contrasenia,
			@RequestParam("nombre") String nombre, @RequestParam("apellidos") String apellidos) {
		try {
			Usuario nuevoUsuario = usuarioService.nuevoUsuario(usuario, contrasenia, nombre, apellidos, email);
			request.getSession().setAttribute("usuario", nuevoUsuario);
			return "index";
		} catch (Exception e) {
			System.err.println(e);
			return "registro";
		}
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request, @RequestParam("usuario") String usuario,
			@RequestParam("contrasenia") String contrasenia) {
		Usuario user = usuarioService.existeUsuario(usuario, contrasenia);
		if (user != null) {
			// existe
			request.getSession().setAttribute("usuario", user);
			return "index";
		} else {
			// no existe
			return "registro";
		}

	}
	
	@RequestMapping("nosotros")
	public String nosotros(Map<String, Object> model) {
		return "nosotros";
	}
	
	@RequestMapping("proximamente")
	public String proximamente(Map<String, Object> model) {
		return "proximamente";
	}
	
	@RequestMapping("arriba")
	public String arriba(Map<String, Object> model) {
		model.put("listaPrendas", tipoPrendaService.obtenerTodos());
		return "elegir/arriba";
	}
	
	@RequestMapping("logout")
	public String logout(HttpServletRequest request) {
		if(request != null && request.getSession() != null) {
			request.getSession().invalidate();
			return "login";
		} else {
			return null;
		}	
	}
}
