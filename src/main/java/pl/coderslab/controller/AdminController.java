package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.User;
import pl.coderslab.service.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    UserService userService;

    @RequestMapping("")
    public String admin() {
        return "admin/admin";
    }

    @GetMapping("/user/add")
    public String add(Model model) {
        model.addAttribute("user", new User());
        return "user/add";
    }

    @PostMapping("/user/add")
    public String save(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "user/add";
        }
        userService.save(user);
        return "redirect:/admin/user/all";
    }

    @RequestMapping("/user/all")
    public String all(Model model) {
        model.addAttribute("users", userService.findAll());
        return "user/all";
    }

    @PostMapping("/user/all")
    public String post(Model model) {
        model.addAttribute("users", userService.findAll());
        return "user/all";
    }

    @GetMapping("/user/edit/{id:[0-9]+}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("user", userService.find(id));
        return "user/edit";
    }

    @PostMapping("/user/edit/{id:[0-9]+}")
    public String edit(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "/user/edit";
        }
        userService.save(user);
        return "redirect:/admin/user/all";
    }

    @RequestMapping("/user/details/{id:[0-9]+}")
    public String details(@PathVariable Long id, Model model) {
        model.addAttribute("user", userService.find(id));
        return "user/details";
    }
}
