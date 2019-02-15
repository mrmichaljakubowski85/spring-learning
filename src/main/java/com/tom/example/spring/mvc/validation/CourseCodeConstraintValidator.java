package com.tom.example.spring.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

    private String[] coursePrefix;

    @Override
    public void initialize(CourseCode constraintAnnotation) {
        coursePrefix = constraintAnnotation.values();
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (value == null)
            return true;
        for (String prefix : coursePrefix) {
            if (value.startsWith(prefix))
                return true;
        }
        return false;
    }
}
