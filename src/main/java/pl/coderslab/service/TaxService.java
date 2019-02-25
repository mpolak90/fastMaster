package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Tax;
import pl.coderslab.repository.TaxRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class TaxService {

    @Autowired
    TaxRepository taxRepository;

    public void save(Tax tax) {
        taxRepository.save(tax);
    }

    public Tax find(Long id) {
        return taxRepository.findOne(id);
    }

    public List<Tax> findAll() {
        return taxRepository.findAll();
    }
}