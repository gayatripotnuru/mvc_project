package com.MovieApp.MovieApp.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.MovieApp.MovieApp.Entity.Payments;

@Repository
public interface PaymentRepository extends JpaRepository<Payments, Integer> {
	
	
}
