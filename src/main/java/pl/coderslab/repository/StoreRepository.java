package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Store;

public interface StoreRepository extends JpaRepository<Store, Long> {
}