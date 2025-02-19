package com.MovieApp.MovieApp.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.MovieApp.MovieApp.Entity.User;
import com.MovieApp.MovieApp.Service.UserService;

import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("movieapp")
public class LoginController {
	
	@Autowired
    private UserService userService;
@GetMapping("/login")
public String Login() {
	return"login";
}

@PostMapping("/auth")
public void login(@RequestParam("username") String phoneNumber, @RequestParam("password") String password ,HttpServletResponse rs) throws IOException {
	 User loggedInUser = userService.authenticate(phoneNumber, password);
	 if (loggedInUser != null) {
        
         rs.sendRedirect("/dashboard");
     } else {
     
         rs.sendRedirect("/movieapp/login");
     }

}
}