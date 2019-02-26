package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Tax;
import pl.coderslab.service.TaxService;
import javax.transaction.Transactional;
import javax.validation.Valid;

@Controller
@Transactional
@RequestMapping("/admin/tax")
public class TaxController {

    @Autowired
    TaxService taxService;

    @RequestMapping("/all")
    public String all(Model model) {
        model.addAttribute("taxes", taxService.findAll());
        return "tax/all";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("tax", new Tax());
        return "tax/add";
    }

    @PostMapping("/add")
    public String save(@Valid Tax tax, BindingResult result) {
        if (result.hasErrors()) {
            return "tax/add";
        }
        taxService.save(tax);
        return "redirect:/admin/tax/all";
    }
}