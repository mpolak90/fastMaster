package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.ProductsGroup;

import java.util.List;

public interface ProductsGroupRepository extends JpaRepository<ProductsGroup, Long> {
    List<ProductsGroup> findAllByOrderByNameDesc();
}
