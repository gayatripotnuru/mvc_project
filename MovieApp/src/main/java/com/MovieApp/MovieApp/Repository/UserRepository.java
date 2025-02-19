package com.MovieApp.MovieApp.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.MovieApp.MovieApp.Entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    // Custom query to find user by phone number and password
    User findByPhoneNumberAndPassword(String phoneNumber, String password);
}
