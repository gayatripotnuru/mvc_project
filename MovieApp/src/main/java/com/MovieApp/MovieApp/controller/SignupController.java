package com.MovieApp.MovieApp.controller;

import com.MovieApp.MovieApp.Entity.User;
import com.MovieApp.MovieApp.Repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class SignupController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/signup")
    public String signupForm() {
        return "signup"; // This will return signup.html
    }

    @PostMapping("/signup")
    public String handleSignup(
            @RequestParam String name,
            @RequestParam String phone,
            @RequestParam String email,
            @RequestParam String password,
            Model model) {

        // Create new User entity object
        User newUser = new User(name, phone, email, password);

        // Save to database
        userRepository.save(newUser);

        // Pass success message to the view
        model.addAttribute("message", "Signup successful for " + name);

        // Redirect or show a success page
        return "login";  // You can create a simple signup-success.html page
    }
}
