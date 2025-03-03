package com.MovieApp.MovieApp.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.MovieApp.MovieApp.Entity.Movies;

@Repository
public interface MovieRepository extends JpaRepository<Movies,Integer> {
     
	
}
