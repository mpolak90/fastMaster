package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Store;
import pl.coderslab.repository.StoreRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class StoreService {

    @Autowired
    StoreRepository storeRepository;

    public void save(Store store) {
        storeRepository.save(store);
    }

    public Store find(Long id) {
        return storeRepository.findOne(id);
    }

    public List<Store> findAll() {
        return storeRepository.findAll();
    }

    public void delete(Long id) {
        storeRepository.delete(id);
    }
}
