package pl.coderslab.model;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity(name = "checks")
public class Check {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToMany
    private List<Product> products;

    @ManyToOne
    private Payment payment;

    private LocalDate created;

 /*   private boolean invoice;

    private LocalDate VAT;

    @ManyToOne
    private Customer customer;*/

    public Check() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }

    public LocalDate getCreated() {
        return created;
    }

    public void setCreated(LocalDate created) {
        this.created = created;
    }

}