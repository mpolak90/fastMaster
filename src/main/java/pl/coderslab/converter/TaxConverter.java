package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.model.Tax;
import pl.coderslab.service.TaxService;

public class TaxConverter implements Converter<String, Tax> {

    @Autowired
    private TaxService taxService;

    @Override
    public Tax convert(String s) {
        return taxService.find(Long.parseLong(s));
    }
}