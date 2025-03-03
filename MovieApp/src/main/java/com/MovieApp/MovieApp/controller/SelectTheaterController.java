package com.MovieApp.MovieApp.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;

import com.MovieApp.MovieApp.Entity.Movies;
import com.MovieApp.MovieApp.Entity.Theater;
import com.MovieApp.MovieApp.Service.MovieService;
import com.MovieApp.MovieApp.Service.TheaterService;

@Controller
@RequestMapping("/movieapp")
public class SelectTheaterController {

    @Autowired
    private TheaterService theaterService;

    @Autowired
    private MovieService movieService;

    @GetMapping("/selectTheater")
    public String selectTheaterPage(@RequestParam("movieId") int movieId, Model model) {
        
    	// Fetch theaters
        List<Theater> theaters = theaterService.getAllTheaters();
        
        // Fetch selected movie
        Movies selectedMovie = movieService.getMovieById(movieId);

        // Add both movie and theater data to the model
        model.addAttribute("theaters", theaters);
        model.addAttribute("selectedMovie", selectedMovie);

        return "selectTheater"; 
    }
}
