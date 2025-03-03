package com.MovieApp.MovieApp.Entity;

import jakarta.persistence.*;

import java.util.Date;
import java.util.List;

@Entity
@Table(name="movies")
public class Movies {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movie_id")
    private int movieId;

    @Column(name = "title")
    private String title;

    @Column(name = "description")
    private String description;

    @Column(name = "genre")
    private String genre;

    @Column(name = "duration")
    private int duration;

    @Column(name = "language")
    private String language;

    @Column(name = "movie_image_url")
    private String movieImageUrl;
    
    @Column(name = "release_date")
    private String releaseDate;
    
    @Column(name = "is_active")
    private String isActive;

    @Column(name = "created_at")
    private Date createdAt;

    @Column(name = "updated_at")
    private Date updatedAt;

    @Column(name = "created_by")
    private String createdBy;

    @Column(name = "updated_by")
    private String updatedBy;

    // ✅ Many-to-Many Relationship with Theater
    @ManyToMany
    @JoinTable(
        name = "movie_theater",
        joinColumns = @JoinColumn(name = "movie_id"),
        inverseJoinColumns = @JoinColumn(name = "theater_id")
    )
    private List<Theater> theaters;

    // Getters and Setters
    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getMovieImageUrl() {
        return movieImageUrl;
    }

    public void setMovieImageUrl(String movieImageUrl) {
        this.movieImageUrl = movieImageUrl;
    }

    public List<Theater> getTheaters() {
        return theaters;
    }

    public void setTheaters(List<Theater> theaters) {
        this.theaters = theaters;
    }
}
