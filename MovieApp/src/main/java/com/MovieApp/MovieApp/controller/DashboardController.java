package com.MovieApp.MovieApp.controller;

import java.util.List;


import com.MovieApp.MovieApp.Entity.Movies;
import com.MovieApp.MovieApp.Service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {
	
	@Autowired
    private MovieService movieService;

	@GetMapping("/dashboard")
    public String dashboard(Model model) {
    	    
    	List<Movies> movieList = movieService.getMovies();
        
    	model.addAttribute("movieList", movieList);
    	
        return "dashboard";
    }
	
	

}
