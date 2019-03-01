package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Store;
import pl.coderslab.service.StoreService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;
import java.math.BigDecimal;

@Controller
@Transactional
@RequestMapping("/admin/store")
public class StoreController {

    @Autowired
    StoreService storeService;

    @RequestMapping("/all")
    public String all(Model model) {
        model.addAttribute("ingrendients", storeService.findAll());
        return "/store/all";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("store", new Store());
        return "/store/add";
    }

    @PostMapping("/add")
    public String save(@Valid Store store, BindingResult result) {
        if (result.hasErrors()) {
            return "/store/add";
        }
        store.setQuantity(BigDecimal.valueOf(0));
        storeService.save(store);
        return "redirect:/admin/store/all";
    }

    @GetMapping("/edit/{id:[0-9]+}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("store", storeService.find(id));
        return "/store/edit";
    }

    @PostMapping("/edit/{id:[0-9]+}")
    public String edit(@Valid Store storesStore, BindingResult result, @PathVariable Long id) {
        if (result.hasErrors()) {
            return "/store/edit/" + id;
        }
        storeService.save(storesStore);
        return "redirect:/admin/store/all";
    }

    @GetMapping("/delete/{id:[0-9]+}")
    public String delete(@PathVariable Long id) {
        storeService.delete(id);
        return "redirect:/admin/store/all";
    }

    @GetMapping("/delivery/{id:[0-9]+}")
    public String delivery(@PathVariable Long id, Model model) {
        model.addAttribute("store", storeService.find(id));
        return "store/delivery";
    }

    @PostMapping("/delivery/{id:[0-9]+}")
    public String login(@PathVariable Long id, HttpServletRequest request, HttpSession session) {
        String quant = request.getParameter("deliv");
        BigDecimal deliv = BigDecimal.valueOf(Double.valueOf(quant));

        Store ingredient = storeService.find(id);
        BigDecimal oldValue = ingredient.getQuantity();
        BigDecimal newValue = oldValue.add(deliv);
        ingredient.setQuantity(newValue);
        storeService.save(ingredient);

        return "redirect:/admin/store/all";
    }
}

