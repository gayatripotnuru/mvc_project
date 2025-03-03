package com.MovieApp.MovieApp.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;





@Controller
public class OrderSummaryController {
   
	 
	@PostMapping("/orderSummary")
	public String showOrderSummary(@RequestParam String movieName,
	                               @RequestParam String theaterName,
	                               @RequestParam String showDate,
	                               @RequestParam String showTime,
	                               @RequestParam String selectedSeats,
	                               @RequestParam String totalPrice,
	                               Model model) {
	

//		System.out.println(movieName);
//		System.out.println(theaterName);
//		System.out.println(showDate);
//		System.out.println(showTime);
//		System.out.println(selectedSeats);
//		System.out.println(totalPrice);
		
	    model.addAttribute("movieName", movieName);
	    model.addAttribute("theaterName", theaterName);
	    model.addAttribute("showDate", showDate);
	    model.addAttribute("showTime", showTime);
	    model.addAttribute("selectedSeats", selectedSeats);
	    model.addAttribute("totalPrice", totalPrice);
	  
	    return "OrderSummary";  
	}

}

