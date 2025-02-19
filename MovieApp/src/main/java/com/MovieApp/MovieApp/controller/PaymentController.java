package com.MovieApp.MovieApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PaymentController {
   @GetMapping("/payment")
   public String Payment() {
	   return "payment";
   }
}
