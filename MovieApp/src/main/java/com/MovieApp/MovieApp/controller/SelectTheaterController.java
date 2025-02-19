package com.MovieApp.MovieApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller()
public class SelectTheaterController {
	@GetMapping("/selectTheater")
	public String SelectTheater() {
		return "selectTheater";
	}

}
