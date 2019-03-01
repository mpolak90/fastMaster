package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Product;
import pl.coderslab.repository.ProductRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class ProductService {

    @Autowired
    ProductRepository productRepository;

    public void save(Product product) {
        productRepository.save(product);
    }

    public Product find(Long id) {
        return productRepository.findOne(id);
    }

    public List<Product> findAll() {
        return productRepository.findAllByOrderByNameAsc();

    }

    public List<Product> findByGroup(Long id) { return productRepository.findAllByProductsGroupId(id); }

    public void delete(Long id) {
        productRepository.delete(id);
    }
}