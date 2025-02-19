package com.MovieApp.MovieApp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.MovieApp.MovieApp.Entity.User;
import com.MovieApp.MovieApp.Repository.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    
    public User authenticate(String phoneNumber, String password) {
       
        return userRepository.findByPhoneNumberAndPassword(phoneNumber, password);
    }

    
}
