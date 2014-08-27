package pl.altkom.magazyn.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pl.altkom.magazyn.dao.MagazynDao;
import pl.altkom.magazyn.model.Towar;

@Controller
public class MagazynStanController {

	@Autowired
	private MagazynDao md;

	@RequestMapping(value = "/magazynstan", method = RequestMethod.GET)
	public String magazyn(Locale locale, Model model, HttpServletRequest request) {
		boolean zmiana = false;
		int id = 0;
		int atrybut = 0;
		String wyrazenie = "";
		
		if (request.getParameter("filter") != null) {
			System.out.println(request.getParameter("wyrazenie"));
			atrybut = Integer.parseInt(request.getParameter("kategoria"));
			wyrazenie = request.getParameter("wyrazenie");
		}
		

		// md.addTowar(new Towar(0,"Buty","Letnie",200.0,30,"Obuwie"));
		model.addAttribute("magazyn", md.getAllSortedTowar(atrybut, wyrazenie));
		model.addAttribute(new Towar());
		return "/magazynstan";
	}}

	
