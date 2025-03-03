package com.MovieApp.MovieApp.Repository;

import com.MovieApp.MovieApp.Entity.Movies;
import com.MovieApp.MovieApp.Entity.ShowTimes;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ShowTimeRepository extends JpaRepository<ShowTimes, Integer> {
	
//	public ShowTimes findByMovie(Movies Movie);
	 Optional<ShowTimes> findTopByMovieOrderByStartDateAsc(Movies movie);
		
	
	
}
