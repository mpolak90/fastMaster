package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Group;

public interface GroupRepository extends JpaRepository<Group, Long> {
}
