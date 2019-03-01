package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Long> {
}