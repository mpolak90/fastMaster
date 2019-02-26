package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.service.GroupService;

@Controller
@RequestMapping("/main")
public class MainController {

    @Autowired
    GroupService groupService;

    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("groups", groupService.findAll());
        return "main";
    }
}