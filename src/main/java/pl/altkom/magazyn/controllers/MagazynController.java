package pl.altkom.magazyn.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pl.altkom.magazyn.dao.MagazynDao;
import pl.altkom.magazyn.model.Towar;
import pl.altkom.util.validation.MagazynValidator;

@Controller
public class MagazynController {

   

    @Autowired
    private MagazynDao md;
    private Locale locale;

    @RequestMapping(value = "/magazyn", method = RequestMethod.GET)
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

        if ((request.getParameter("sort") != null)) {
            md.setSort(Integer.parseInt(request.getParameter("sort")));
        }

        if ((request.getParameter("id") != null)
                && (request.getParameter("action") != null)) {
            if (request.getParameter("action").equals("delete")) {
                md.removeTowar(Integer.parseInt(request.getParameter("id")));
            }
            if (request.getParameter("action").equals("update")) {
                zmiana = true;
                id = Integer.parseInt(request.getParameter("id"));
                model.addAttribute("towar", md.getTowar(id));
            }
        }

        // md.addTowar(new Towar(0,"Buty","Letnie",200.0,30,"Obuwie"));
        model.addAttribute("magazyn", md.getAllSortedTowar(atrybut, wyrazenie));
        model.addAttribute(new Towar());
        return "magazyn";
    }

    @RequestMapping(value = "/magazyn", method = RequestMethod.POST)
    public String magazynDodaj(Locale locale, @Valid Towar towar, BindingResult bindingResult,
            Model model) {
        if (bindingResult.hasErrors()) {
            return "/magazyn";
        }
        md.addTowar(towar);
        model.addAttribute("magazyn", md.getAllSortedTowar(0, ""));
        model.addAttribute(new Towar());
        return "magazyn" ;
    }


    @RequestMapping(value = "/magazynzmien", method = RequestMethod.GET)
    public String magazynDodaj(HttpServletRequest request, Model model) {
        int id = Integer.parseInt(request.getParameter("id"));
        model.addAttribute(md.getTowar(id));
        return "magazynzmien";
    }

    @RequestMapping(value = "/magazynzmien", method = RequestMethod.POST)
    public String magazynDodaj(@ModelAttribute Towar towar, Model model) {
        md.updateTowar(towar);
        model.addAttribute(new Towar());
        model.addAttribute("magazyn", md.getAllSortedTowar(0, ""));
        model.addAttribute(new Towar());
        return "magazynzmien2";
    }

}
       
    

//    @RequestMapping(value = "/zmiana", method = RequestMethod.POST)
//    public String magazynDodaj(@Valid Towar towar, BindingResult bindingResult, Model model) {
//        if (bindingResult.hasErrors()) {
//            return "/zmiana";
//        }
//
//        md.updateTowar(towar);
//        model.addAttribute(new Towar());
//        model.addAttribute("magazyn", md.getAllSortedTowar(0, ""));
//        model.addAttribute(new Towar());
//        return "magazyn";
//    }


