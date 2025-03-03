package com.MovieApp.MovieApp.controller;

import com.MovieApp.MovieApp.Entity.Movies;
import com.MovieApp.MovieApp.Entity.ShowTimes;
import com.MovieApp.MovieApp.Service.MovieService;
import com.MovieApp.MovieApp.Service.SlottingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;

@Controller
public class SlottingController {

    @Autowired
    private SlottingService slottingService;

    @Autowired
    private MovieService movieService;  // Inject MovieService to fetch movie details

    @GetMapping("/slot")
    public String getShowTimes(@RequestParam("movieId") Integer movieId, 
                               @RequestParam("theaterId") Integer theaterId, 
                               Model model) {

        // Fetch movie details
        Movies selectedMovie = movieService.getMovieById(movieId);
        if (selectedMovie != null) {
            model.addAttribute("selectedMovie", selectedMovie);
        } else {
            model.addAttribute("errorMessage", "Movie details not available.");
        }

        // Fetch showtimes
        List<ShowTimes> filteredShowtimes = slottingService.getShowTimesForMovieAndTheater(movieId, theaterId);
        if (filteredShowtimes.isEmpty()) {
            model.addAttribute("message", "No showtimes available for this movie in the selected theater.");
        } else {
            model.addAttribute("showtimes", filteredShowtimes);
        }

        return "TicketSlot";  
    }
}
