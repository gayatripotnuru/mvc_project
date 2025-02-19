<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.MovieApp.MovieApp.Entity.Movie" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/movieprofile.css">
</head>

<body>
    <header id="main-header">
        <img src="" alt="Logo">
        <div class="search-box">
            <input type="text" placeholder="Search movies">
            <input type="text" placeholder="Search theatres">
        </div>
        <button>Profile</button>
    </header>

    <main>
        <section class="movie-details">
            
                <img src="<%= ((Movie) request.getAttribute("movie")).getMovieUrl() %>" alt="Movie Poster">
            
            <div class="movie-info">
                <h2><%= ((Movie) request.getAttribute("movie")).getMovieName() %></h2>
                <p>Rating: <%= ((Movie) request.getAttribute("movie")).getMovieRating() %></p>
                <button class="book-ticket">Book Ticket</button>
            </div>
        </section>
        <section class="movie-casting">Movie casting</section>
    </main>

    <footer>
        &copy; 2025 Your Company. All rights reserved.
    </footer>
</body>

</html>
