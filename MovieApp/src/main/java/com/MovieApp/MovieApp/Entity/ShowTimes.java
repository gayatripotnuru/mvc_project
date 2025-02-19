package com.MovieApp.MovieApp.Entity;



import java.sql.Date;
import java.sql.Time;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "showtimes_details")
public class ShowTimes {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name = "showtime_id")
	private int showtimeId;
	
	@ManyToOne
	@JoinColumn(name="movie_id")
	private Movies movie;
	
	@ManyToOne
	@JoinColumn(name="theater_id")
	private Theater theater;
	
	@Column(name = "start_time")
	private Time startTime;
	
	@Column(name = "end_time")
	private  Time endTime;
	
	@Column(name = "avaliable_seats")
	private String avaliableSeats;
	
	@Column(name = "created_at")
	private Date createdAt;
	
	@Column(name = "updated_by")
	private Date updatedBy;

	public int getShowtimeId() {
		return showtimeId;
	}

	public void setShowtimeId(int showtimeId) {
		this.showtimeId = showtimeId;
	}

	public Movies getMovie() {
		return movie;
	}

	public void setMovie(Movies movie) {
		this.movie = movie;
	}

	public Theater getTheater() {
		return theater;
	}

	public void setTheater(Theater theater) {
		this.theater = theater;
	}

	public Time getStartTime() {
		return startTime;
	}

	public void setStartTime(Time startTime) {
		this.startTime = startTime;
	}

	public Time getEndTime() {
		return endTime;
	}

	public void setEndTime(Time endTime) {
		this.endTime = endTime;
	}

	public String getAvaliableSeats() {
		return avaliableSeats;
	}

	public void setAvaliableSeats(String avaliableSeats) {
		this.avaliableSeats = avaliableSeats;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(Date updatedBy) {
		this.updatedBy = updatedBy;
	}

}