package com.MovieApp.MovieApp.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.MovieApp.MovieApp.Entity.Movies;
import com.MovieApp.MovieApp.Service.MovieService;

@Controller
public class ProfileController {

    @Autowired
    private MovieService movieService;

    @GetMapping("/Movieprofile/{movieId}")
    public String showMovieInfo(@PathVariable int movieId, Model model) {
        Movies movieInfo = movieService.getMovieById(movieId);

        if (movieInfo == null) {
            System.out.println("Movie not found for ID: " + movieId);
            return "error";  // Redirects to an error page if the movie is not found.
        }

        model.addAttribute("selectedMovie", movieInfo);
        return "movieprofile"; // This will render movieprofile.jsp
    }
}
