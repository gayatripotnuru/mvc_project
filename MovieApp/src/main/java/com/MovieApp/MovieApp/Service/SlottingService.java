package com.MovieApp.MovieApp.Service;

import com.MovieApp.MovieApp.Entity.ShowTimes;
import com.MovieApp.MovieApp.Repository.SlottingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class SlottingService {

    @Autowired
    private SlottingRepository slottingRepository;

    // Fetch all active showtimes
    public List<ShowTimes> getActiveShowTimes() {
        return slottingRepository.findByIsActive("Y");
    }

    // Fetch showtimes for a specific movie and theater
    public List<ShowTimes> getShowTimesForMovieAndTheater(Integer movieId, Integer theaterId) {
        return slottingRepository.findByMovie_MovieIdAndTheater_TheaterIdAndIsActive(movieId, theaterId, "Y");
    }
}
