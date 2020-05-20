package com.gottskalksson.carmanager.validator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Constraint(validatedBy = CarPlateValidator.class)
@Target({ElementType.METHOD, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface UniquePlateNumber {
    String message() default "{com.gottskalksson.carmanager.validator.UniquePlateNumber.message}";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
