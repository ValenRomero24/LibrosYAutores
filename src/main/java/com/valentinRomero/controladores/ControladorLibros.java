package com.valentinRomero.controladores;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControladorLibros {
	private static HashMap<String, String> listaLibros = new HashMap<String, String>();
	
	public ControladorLibros() {
		listaLibros.put("Odisea", "Homero");	
		listaLibros.put("Don Quijote de la Mancha", "Miguel de Cervantes");
		listaLibros.put("El Código Da Vinci", "Dan Brown");		
		listaLibros.put("Alicia en el país de las maravillas", "Lewis Carroll");
		listaLibros.put("El Hobbit", "J.R.R. Tolkien");	
		listaLibros.put("El alquimista", "Paulo Coelho");	
	}
	
	@GetMapping("/libros")
	public String obtenerTodosLosLibros(Model modelo) {
		modelo.addAttribute("listaLibros", listaLibros);
		return"libros.jsp";
	}
	
	@GetMapping("/libros/{nombre}")
	public String obtenerInfoDeLibro(@PathVariable("nombre") String nombreLibro, Model modelo) {
		if (listaLibros.containsKey(nombreLibro)) {
			modelo.addAttribute("libro", nombreLibro);
			modelo.addAttribute("autor", listaLibros.get(nombreLibro));
		}
		else {
			modelo.addAttribute("mensajeError", "El libro no se encuentra en nuestra lista.");
		}
		return "detalleLibro.jsp";
	}
	
	@GetMapping("/libros/formulario")
	public String formularioLibro() {
		return "formularioLibros.jsp";
	}
	
	@PostMapping("/procesa/libro")
	public String procesaLibro(@RequestParam("titulo") String titulo, @RequestParam("autor") String autor) {
		listaLibros.put(titulo, autor);
		return "redirect:/libros";
	}
	
}