package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Tax;

public interface TaxRepository extends JpaRepository<Tax, Long> {
}
