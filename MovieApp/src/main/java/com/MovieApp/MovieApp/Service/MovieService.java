package com.MovieApp.MovieApp.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MovieApp.MovieApp.Entity.Movies;
import com.MovieApp.MovieApp.Repository.MovieRepository;

@Service
public class MovieService {

    @Autowired
    private MovieRepository movierepo;

    // Fetch all movies
    public List<Movies> getMovies() {
        return movierepo.findAll();
    }

    // Fetch a movie by ID
    public Movies getMovieById(int movieId) {
        return movierepo.findById(movieId).orElse(null);
    }
    
    public List<Movies> searchMovies(String movieName) {
        // Trim and convert search term to lowercase
        String searchTerm = movieName.trim().toLowerCase();

        List<Movies> allMovies = getMovies();
        List<Movies> searchedMovies = new ArrayList<>();

        System.out.println("Searching for movies matching: " + searchTerm); // Debug log

        for (Movies m : allMovies) {
            // Normalize movie title
            String movieTitle = m.getTitle().trim().toLowerCase();

            if (movieTitle.contains(searchTerm)) {
                searchedMovies.add(m);
            }
        }

        System.out.println("Found " + searchedMovies.size() + " movies matching: " + searchTerm); // Debug log
        return searchedMovies;
    }

}
