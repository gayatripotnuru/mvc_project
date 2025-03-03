package com.MovieApp.MovieApp.Repository;

import com.MovieApp.MovieApp.Entity.ShowTimes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SlottingRepository extends JpaRepository<ShowTimes, Integer> {

    // Fetch all active showtimes
    List<ShowTimes> findByIsActive(String isActive);

    // Fetch active showtimes for a specific movie and theater
    List<ShowTimes> findByMovie_MovieIdAndTheater_TheaterIdAndIsActive(Integer movieId, Integer theaterId, String isActive);
}
