package com.MovieApp.MovieApp.Service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MovieApp.MovieApp.Entity.Movies;
import com.MovieApp.MovieApp.Entity.ShowTimes;
import com.MovieApp.MovieApp.Repository.ShowTimeRepository;

import java.util.Optional;

@Service
public class ShowTimeService {

//    @Autowired
//    private ShowTimeRepository showtimeRepository;
//
//    
//    public ShowTimes getShowtimeById(int showtimeId) {
//        Optional<ShowTimes> showtime = showtimeRepository.findById(showtimeId);
//        return showtime.orElse(null);  // If not found, return null
//    }
    
//    public ShowTimes findByMovieId(Movies Movie) {
//    	return showtimeRepository.findByMovie(Movie);
//    }
	 @Autowired
	    private ShowTimeRepository showTimeRepository;

	    public Optional<ShowTimes> findByMovieId(Movies movie) {
	        return showTimeRepository.findTopByMovieOrderByStartDateAsc(movie);
	    }
}
