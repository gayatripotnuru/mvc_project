package com.MovieApp.MovieApp.Entity;

import java.util.Date;
import java.util.List;
import jakarta.persistence.*;

@Entity
@Table(name="theater")
public class Theater {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "theater_id")
    private int theaterId;

    @Column(name = "name")
    private String name;

    @Column(name = "location")
    private String location;

    @Column(name = "capacity")
    private int capacity;

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

    // ✅ Many-to-Many Relationship with Movies
    @ManyToMany(mappedBy = "theaters")
    private List<Movies> movies;

    public Theater() {
        super();
    }

    // Getters and Setters

    public int getTheaterId() {  
        return theaterId;
    }

    public void setTheaterId(int theaterId) {  
        this.theaterId = theaterId;
    }

    public String getName() {  
        return name;
    }

    public void setName(String name) {  
        this.name = name;
    }

    public String getLocation() {  
        return location;
    }

    public void setLocation(String location) {  
        this.location = location;
    }

    public int getCapacity() {  
        return capacity;
    }

    public void setCapacity(int capacity) {  
        this.capacity = capacity;
    }

    public String getIsActive() {  
        return isActive;
    }

    public void setIsActive(String isActive) {  
        this.isActive = isActive;
    }

    public Date getCreatedAt() {  
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {  
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {  
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {  
        this.updatedAt = updatedAt;
    }

    public String getCreatedBy() {  
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {  
        this.createdBy = createdBy;
    }

    public String getUpdatedBy() {  
        return updatedBy;
    }

    public void setUpdatedBy(String updatedBy) {  
        this.updatedBy = updatedBy;
    }

    public List<Movies> getMovies() {
        return movies;
    }

    public void setMovies(List<Movies> movies) {
        this.movies = movies;
    }
}
