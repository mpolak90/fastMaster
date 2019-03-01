package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Check;
import pl.coderslab.repository.CheckRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class CheckService {

    @Autowired
    CheckRepository checkRepository;

    public void save(Check check) {
        checkRepository.save(check);
    }

    public Check find(Long id) {
        return checkRepository.findOne(id);
    }

    public List<Check> findAll() {
        return checkRepository.findAll();
    }

    public void delete(Long id) {
        checkRepository.delete(id);
    }
}