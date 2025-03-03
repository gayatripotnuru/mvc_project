package com.MovieApp.MovieApp.controller;


import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.MovieApp.MovieApp.Entity.Movies;
import com.MovieApp.MovieApp.Entity.ShowTimes;
import com.MovieApp.MovieApp.Service.MovieService;
import com.MovieApp.MovieApp.Service.ShowTimeService;




@Controller()
public class SeatController {
	
	@Autowired
    private MovieService movieService; 
	
	@Autowired
	private ShowTimeService showTimeService;
	
	@GetMapping("/seat")
	public String Seat(@RequestParam("movieId") Integer movieId, Model model) {

	    Movies selectedMovie = movieService.getMovieById(movieId);

	    if (selectedMovie != null) {
	        model.addAttribute("selectedMovie", selectedMovie);

	        Optional<ShowTimes> optionalShowTime = showTimeService.findByMovieId(selectedMovie);

	        if (optionalShowTime.isPresent()) {
	            ShowTimes showinfo = optionalShowTime.get();
	            model.addAttribute("theatername", showinfo.getTheater().getName());
	            model.addAttribute("showdate", showinfo.getStartDate());
	            model.addAttribute("showtime", showinfo.getStartTime());
	        } else {
	            model.addAttribute("errorMessage", "Showtime details not available for this movie.");
	        }

	    } else {
	        model.addAttribute("errorMessage", "Movie details not available.");
	    }

	    return "TickSeating";
	}
	
	
	
	
//	@GetMapping("/seat")
//	public String Seat(@RequestParam("movieId") Integer movieId, Model model) {
//		
//		  Movies selectedMovie = movieService.getMovieById(movieId);
//		  
//	        if (selectedMovie != null) {
//	            model.addAttribute("selectedMovie", selectedMovie);
//	        } else {
//	            model.addAttribute("errorMessage", "Movie details not available.");
//	        }
//	        
//	     ShowTimes showinfo=showTimeService.findByMovieId(selectedMovie);
//	    
//	     model.addAttribute("theatername", showinfo.getTheater().getName());
//	     model.addAttribute("showdate", showinfo.getStartDate());
//	    model.addAttribute("showtime", showinfo.getStartTime());
//	    
//	 
//	     
//	     
//
//		return "TickSeating";
//		
//		
//	  
//	}

}
