package com.MovieApp.MovieApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller()
public class SeatController {
	@GetMapping("/seat")
	public String Seat() {
		return "TickSeating";
	}

}
