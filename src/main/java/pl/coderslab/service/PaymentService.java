package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Payment;
import pl.coderslab.repository.PaymentRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class PaymentService {

    @Autowired
    PaymentRepository paymentRepository;

    public void save(Payment payment) {
        paymentRepository.save(payment);
    }

    public Payment find(Long id) {
        return paymentRepository.findOne(id);
    }

    public List<Payment> findAll() {
        return paymentRepository.findAll();
    }

    public void delete(Long id) {
        paymentRepository.delete(id);
    }
}