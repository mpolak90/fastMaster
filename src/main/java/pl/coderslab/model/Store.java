package pl.coderslab.model;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Digits;
import java.math.BigDecimal;

@Entity
public class Store {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;

    @NotEmpty
    @DecimalMin("0.01")
    @Digits(integer = 4, fraction = 2)
    private BigDecimal price;

    @NotEmpty
    @ColumnDefault("0")
    private BigDecimal quantity;
}