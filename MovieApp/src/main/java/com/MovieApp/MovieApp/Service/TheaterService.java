package com.MovieApp.MovieApp.Service;

import com.MovieApp.MovieApp.Entity.Theater;
import com.MovieApp.MovieApp.Repository.TheaterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TheaterService {

    @Autowired
    private TheaterRepository theaterRepository;

    public List<Theater> getAllTheaters() {
        return theaterRepository.findAll();
    }
    
    public Theater getTheaterById(int theaterId) {
        return theaterRepository.findById(theaterId).orElse(null);
    }
    
    public List<Theater> searchTheatre(String theatreName) {
        List<Theater> allTheatre = theaterRepository.findAll();
        
        List<Theater> searchedTheatrs = new ArrayList<>();;
        
        for(Theater t : allTheatre) {
        	if(t.getName().toLowerCase().contains(theatreName.toLowerCase())) {
        		searchedTheatrs.add(t);
        	}
        }
		return searchedTheatrs;
    }
    
    
    
}
