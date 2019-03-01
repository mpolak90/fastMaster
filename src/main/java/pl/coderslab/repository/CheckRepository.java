package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Check;

public interface CheckRepository extends JpaRepository<Check, Long> {
}
