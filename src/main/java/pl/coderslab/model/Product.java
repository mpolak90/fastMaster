package pl.coderslab.model;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.List;

@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @ManyToMany(fetch = FetchType.EAGER)
    private List<Store> ingrendients;

    @ManyToOne
    private ProductsGroup productsGroup;

    @NotNull
    @Digits(integer = 2, fraction = 2)
    @DecimalMin(value = "0.01")
    @DecimalMax(value = "99.99")
    private BigDecimal solo_price;

    @Digits(integer = 2, fraction = 2)
    @DecimalMin(value = "0.01")
    @DecimalMax(value = "99.99")
    private BigDecimal menu_price;

    @NotNull
    @ManyToOne
    private Tax tax;

    public Product() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Store> getIngrendients() {
        return ingrendients;
    }

    public void setIngrendients(List<Store> ingrendients) {
        this.ingrendients = ingrendients;
    }

    public ProductsGroup getProductsGroup() {
        return productsGroup;
    }

    public void setProductsGroup(ProductsGroup productsGroup) {
        this.productsGroup = productsGroup;
    }

    public BigDecimal getSolo_price() {
        return solo_price;
    }

    public void setSolo_price(BigDecimal solo_price) {
        this.solo_price = solo_price;
    }

    public BigDecimal getMenu_price() {
        return menu_price;
    }

    public void setMenu_price(BigDecimal menu_price) {
        this.menu_price = menu_price;
    }

    public Tax getTax() {
        return tax;
    }

    public void setTax(Tax tax) {
        this.tax = tax;
    }
}