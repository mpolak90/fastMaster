package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import pl.coderslab.model.ProductsGroup;
import pl.coderslab.repository.ProductsGroupRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class GroupService {

    @Autowired
    ProductsGroupRepository productsGroupRepository;

    public void save(ProductsGroup productsGroup) {
        productsGroupRepository.save(productsGroup);
    }

    public ProductsGroup find(Long id) {
        return productsGroupRepository.findOne(id);
    }

    public List<ProductsGroup> findAll() {
        return productsGroupRepository.findAllByOrderByNameDesc();
    }

    public void delete(Long id) {
        productsGroupRepository.delete(id);
    }
}