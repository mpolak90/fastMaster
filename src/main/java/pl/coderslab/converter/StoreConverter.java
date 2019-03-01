package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.model.Store;
import pl.coderslab.service.StoreService;

public class StoreConverter implements Converter<String, Store> {

    @Autowired
    private StoreService storeService;

    @Override
    public Store convert(String s) {
        return storeService.find(Long.parseLong(s));
    }
}