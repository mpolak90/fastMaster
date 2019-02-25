package pl.coderslab.model;

import java.math.BigDecimal;
import java.util.List;

public class Product {
    private Long id;
    private String name;
    private List<Store> ingredients;
    private Group group;
    private BigDecimal solo_price;
    private BigDecimal menu_price;
    private Tax tax;
}