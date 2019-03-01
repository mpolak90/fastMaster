package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Product;
import pl.coderslab.model.ProductsGroup;
import pl.coderslab.model.Store;
import pl.coderslab.model.Tax;
import pl.coderslab.service.GroupService;
import pl.coderslab.service.ProductService;
import pl.coderslab.service.StoreService;
import pl.coderslab.service.TaxService;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

@Controller
@Transactional
@RequestMapping("/admin/product")
public class ProductController {

    @Autowired
    ProductService productService;

    @Autowired
    StoreService storeService;

    @Autowired
    TaxService taxService;

    @Autowired
    GroupService groupService;

    @ModelAttribute("ingrendients")
    public List<Store> getIngrendients() {
        return storeService.findAll();
    }

    @ModelAttribute("taxes")
    public List<Tax> getTaxes() {
        return taxService.findAll();
    }

    @ModelAttribute("groups")
    public List<ProductsGroup> getGroups() {
        return groupService.findAll();
    }

    @RequestMapping("/all")
    public String all(Model model) {
        model.addAttribute("products", productService.findAll());
        return "/product/all";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("product", new Product());
        return "/product/add";
    }

    @PostMapping("/add")
    public String save(@Valid Product productsProduct, BindingResult result) {
        if (result.hasErrors()) {
            return "product/add";
        }
        productService.save(productsProduct);
        return "redirect:/admin/product/all";
    }

    @GetMapping("/edit/{id:[0-9]+}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.find(id));
        return "/product/edit";
    }

    @PostMapping("/edit/{id:[0-9]+}")
    public String edit(@Valid Product productsProduct, BindingResult result, @PathVariable Long id) {
        if (result.hasErrors()) {
            return "/product/edit/" + id;
        }
        productService.save(productsProduct);
        return "redirect:/admin/product/all";
    }

    @GetMapping("/delete/{id:[0-9]+}")
    public String delete(@PathVariable Long id) {
        productService.delete(id);
        return "redirect:/admin/product/all";
    }

    @GetMapping("/details/{id:[0-9]+}")
    public String details(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.find(id));
        return "/product/details";
    }
}
