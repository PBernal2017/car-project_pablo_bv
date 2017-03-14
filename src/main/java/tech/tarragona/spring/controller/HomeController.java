package tech.tarragona.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tech.tarragona.spring.model.Coche;
import tech.tarragona.spring.service.CocheService;




@Controller
public class HomeController {
	
	@Autowired
	CocheService cocheService;	
		
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String getCoches(Model model) {
		model.addAttribute("Coches", cocheService.getCoches());
		return "listar";
	}
	@GetMapping("/crear")
	public String addPerson(Model model) {
		model.addAttribute("Coches", new Coche());
		return "crear";
	}
	
}
