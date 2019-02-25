package pl.coderslab.model;

import java.time.LocalDate;
import java.util.List;

public class Check {
    private Long id;
    private List<Product> products;
    private List<Payment> payments;
    private Customer customer;
    private LocalDate created;
    private LocalDate VAT;
    private boolean invoice;
}