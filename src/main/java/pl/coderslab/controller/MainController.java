package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.ProductsGroup;
import pl.coderslab.model.User;
import pl.coderslab.service.GroupService;
import pl.coderslab.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@SessionAttributes({"groups"})
public class MainController {

    @Autowired
    GroupService groupService;

    @Autowired
    UserService userService;

    @ModelAttribute("groups")
    List<ProductsGroup> groups() {
        return groupService.findAll();
    }

    @RequestMapping("/main")
    public String main(HttpSession session, Model model) {
        model.addAttribute("groups", groupService.findAll());

        if (session.getAttribute("order") != null) {
            model.addAttribute("orders", session.getAttribute("orders"));
            model.addAttribute("sum", session.getAttribute("sum"));
        }

        return "/main";
    }

    @RequestMapping("/main/reset")
    public String reset(HttpSession session) {
        session.setAttribute("orders", null);
        session.setAttribute("sum", null);
        return "/main";
    }

    @RequestMapping("/main/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("orders");
        session.removeAttribute("sum");
        session.removeAttribute("user");
        return "redirect:/";
    }

    @GetMapping("/login")
    public String login() {
        return "logpage";
    }

    @PostMapping("/login")
    public String login(HttpServletRequest request, HttpSession session) {
        String password = request.getParameter("password");
        List<User> finds = userService.findByPass(password);

        if (finds.size() != 1) {
            return "/login";
        } else {
            User user = finds.get(0);
            session.setAttribute("user", user);
            return "/main";
        }
    }
}