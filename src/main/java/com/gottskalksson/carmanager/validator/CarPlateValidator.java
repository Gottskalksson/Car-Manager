package com.gottskalksson.carmanager.validator;

import com.gottskalksson.carmanager.repositories.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CarPlateValidator implements ConstraintValidator<UniquePlateNumber, String> {

    @Autowired
    private CarRepository carRepository;

    @Override
    public void initialize(UniquePlateNumber constraintAnnotation) {

    }

    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {
        try {
            return !carRepository.existsByPlateNumber(s);
        } catch (NullPointerException e) {
            return true;
        }
    }
}
