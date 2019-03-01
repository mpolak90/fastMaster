package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import pl.coderslab.service.ProductService;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

@Controller
@Transactional
@SessionAttributes({"groups", "orders", "sum"})
@RequestMapping("/main/group")
public class GroupController {

    @Autowired
    ProductService productService;

    @GetMapping("/{id:[0-9]+}")
    public String menu(HttpSession session, Model model, @PathVariable Long id) {

        if (session.getAttribute("orders") != null) {
            model.addAttribute("sum", session.getAttribute("sum"));
            model.addAttribute("orders", session.getAttribute("orders"));
        }

        model.addAttribute("products", productService.findByGroup(id));
        return "group/list";
    }
}
