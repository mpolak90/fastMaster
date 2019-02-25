package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
