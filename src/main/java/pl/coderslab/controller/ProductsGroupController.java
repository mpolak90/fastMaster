package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.ProductsGroup;
import pl.coderslab.service.GroupService;

import javax.transaction.Transactional;
import javax.validation.Valid;

@Controller
@Transactional
@RequestMapping("/admin/group")
public class ProductsGroupController {

    @Autowired
    GroupService groupService;

    @RequestMapping("/all")
    public String all(Model model) {
        model.addAttribute("groups", groupService.findAll());
        return "/group/all";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("group", new ProductsGroup());
        return "/group/add";
    }

    @PostMapping("/add")
    public String save(@Valid ProductsGroup productsGroup, BindingResult result) {
        if (result.hasErrors()) {
            return "/group/add";
        }
        groupService.save(productsGroup);
        return "redirect:/admin/group/all";
    }

    @GetMapping("/edit/{id:[0-9]+}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("group", groupService.find(id));
        return "/group/edit";
    }

    @PostMapping("/edit/{id:[0-9]+}")
    public String edit(@Valid ProductsGroup productsGroup, BindingResult result, @PathVariable Long id) {
        if (result.hasErrors()) {
            return "/group/edit/" + id;
        }
        groupService.save(productsGroup);
        return "redirect:/admin/group/all";
    }

    @GetMapping("/delete/{id:[0-9]+}")
    public String delete(@PathVariable Long id) {
        groupService.delete(id);
        return "redirect:/admin/group/all";
    }
}