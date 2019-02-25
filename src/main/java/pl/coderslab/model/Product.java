package pl.coderslab.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Digits;
import java.math.BigDecimal;
import java.util.List;

@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;

    @OneToMany
    private List<Store> ingredients;

    @ManyToOne
    private Group group;

    @Digits(integer = 2, fraction = 2)
    @DecimalMin("0.01")
    private BigDecimal solo_price;

    @Digits(integer = 2, fraction = 2)
    @DecimalMin("0.01")
    private BigDecimal menu_price;

    @ManyToOne
    private Tax tax;
}