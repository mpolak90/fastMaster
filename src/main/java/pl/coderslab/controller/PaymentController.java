package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Payment;
import pl.coderslab.service.PaymentService;

import javax.transaction.Transactional;
import javax.validation.Valid;

@Controller
@Transactional
@RequestMapping("/admin/payment")
public class PaymentController {

    @Autowired
    PaymentService paymentService;

    @RequestMapping("/all")
    public String all(Model model) {
        model.addAttribute("payments", paymentService.findAll());
        return "payment/all";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("payment", new Payment());
        return "payment/add";
    }

    @PostMapping("/add")
    public String save(@Valid Payment payment, BindingResult result) {
        if (result.hasErrors()) {
            return "payment/add";
        }
        paymentService.save(payment);
        return "redirect:/admin/payment/all";
    }
}