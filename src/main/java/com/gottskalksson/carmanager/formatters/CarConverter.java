package com.gottskalksson.carmanager.formatters;

import com.gottskalksson.carmanager.entity.Car;
import com.gottskalksson.carmanager.repositories.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class CarConverter implements Converter<String, Car> {

    @Autowired
    private CarRepository carRepository;

    @Override
    public Car convert(String s) {
        return carRepository.findById(Long.parseLong(s)).get();
    }
}
