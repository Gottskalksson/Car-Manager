package com.gottskalksson.carmanager.formatters;

import com.gottskalksson.carmanager.entity.User;
import com.gottskalksson.carmanager.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class UserConverter implements Converter<String, User> {

    @Autowired
    private UserRepository userRepository;


    @Override
    public User convert(String s) {
        return userRepository.findById(Long.parseLong(s)).get();
    }
}
