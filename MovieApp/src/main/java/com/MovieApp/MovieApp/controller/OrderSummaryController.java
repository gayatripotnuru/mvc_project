package com.MovieApp.MovieApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderSummaryController {
	@GetMapping("/orderSummary")
	public String OrderSummary() {
		return "OrderSummary";
	}
}
