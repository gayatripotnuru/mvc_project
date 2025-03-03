package com.MovieApp.MovieApp.Repository;




import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.MovieApp.MovieApp.Entity.Seats;

@Repository
public interface SeatRepository extends JpaRepository<Seats, Integer> {

}

