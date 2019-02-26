package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.service.ProductService;

import javax.transaction.Transactional;

@Controller
@Transactional
@RequestMapping("/admin/product")
public class ProductController {

    @Autowired
    ProductService productService;

    @RequestMapping("/all")
    public String all(Model model) {
        model.addAttribute("products", productService.findAll());
        return "/product/all";
    }
}
