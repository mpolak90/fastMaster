package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Check;
import pl.coderslab.model.Product;
import pl.coderslab.service.CheckService;
import pl.coderslab.service.GroupService;
import pl.coderslab.service.PaymentService;
import pl.coderslab.service.ProductService;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
@Transactional
@SessionAttributes({"groups", "orders", "sum"})
@RequestMapping("/main/check")
public class CheckController {

    @Autowired
    ProductService productService;

    @Autowired
    GroupService groupService;

    @Autowired
    PaymentService paymentService;

    @Autowired
    CheckService checkService;

    @GetMapping("/add/{id:[0-9]+}")
    public String add(@PathVariable Long id, Model model, HttpSession session) {

        List<Product> orders;
        BigDecimal sum;

        if (session.getAttribute("orders") != null) {
            orders = (List<Product>) session.getAttribute("orders");
            sum = (BigDecimal) session.getAttribute("sum");
        } else {
            orders = new ArrayList<>();
            sum = BigDecimal.valueOf(0);
        }

        orders.add(productService.find(id));
        sum = sum.add(productService.find(id).getSolo_price());
        model.addAttribute("groups", groupService.findAll());
        model.addAttribute("orders", orders);
        model.addAttribute("sum", sum);
        return "/main";
    }

    @GetMapping("/add/empty")
    public String empty() {
        return "/main";
    }

    @RequestMapping("/payment")
    public String payment(HttpSession session) {
        session.setAttribute("payments", paymentService.findAll());
        return "payment";
    }

    @GetMapping("/payment/add/{id:[0-9]+}")
    public String add(@PathVariable Long id, HttpSession session) {
        Check check = new Check();
        check.setCreated(LocalDate.now());
        check.setPayment(paymentService.find(id));
        check.setProducts((List<Product>) session.getAttribute("orders"));
        checkService.save(check);

        session.setAttribute("check", check);

        return "check";
    }
}