package com.MovieApp.MovieApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SlottingController {
	@GetMapping("/slot")
	public String Slot() {
		return "TicketSlot";
	}
}
