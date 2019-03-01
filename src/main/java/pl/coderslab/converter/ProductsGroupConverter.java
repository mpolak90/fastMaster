package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.model.ProductsGroup;
import pl.coderslab.service.GroupService;

public class ProductsGroupConverter implements Converter<String, ProductsGroup> {

    @Autowired
    private GroupService groupService;

    @Override
    public ProductsGroup convert(String s) {
        return groupService.find(Long.parseLong(s));
    }
}
