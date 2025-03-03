<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.MovieApp.MovieApp.Entity.Movies, com.MovieApp.MovieApp.Entity.Theater" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Theater</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/selectTheater.css">
</head>
<body>

<header class="main-header">
    <img src="https://i.pinimg.com/736x/e5/db/f2/e5dbf27053bcb6c8a4b187244d44078a.jpg" alt="Logo">
    <button onclick="window.location.href='${pageContext.request.contextPath}/user/userprofile'">Profile</button>
</header>

<main class="main-container">

    <div class="movie-section">
        <% Movies selectedMovie = (Movies) request.getAttribute("selectedMovie"); %>
        <% if (selectedMovie != null) { %>
            <img src="<%= selectedMovie.getMovieImageUrl() %>" alt="Movie Poster">
            <div class="movie-info">
                <h2><%= selectedMovie.getTitle() %></h2>
                <p>Genre: <%= selectedMovie.getGenre() %></p>
                <p>Duration: <%= selectedMovie.getDuration() %> minutes</p>
                <p>Language: <%= selectedMovie.getLanguage() %></p>
            </div>
        <% } else { %>
            <p class="error">Movie details not available.</p>
        <% } %>
    </div>

    <div class="theater-section">
        <h2>Select Theater</h2>
        <div class="theater-list">
            <% List<Theater> theaters = (List<Theater>) request.getAttribute("theaters"); %>
            <% if (theaters != null && !theaters.isEmpty()) { %>
                <% for (Theater theater : theaters) { %>
                    <div class="theater-item" data-id="<%= theater.getTheaterId() %>">
                        <h3><%= theater.getName() %></h3>
                        <p>Location: <%= theater.getLocation() %></p>
                    </div>
                <% } %>
            <% } else { %>
                <p class="error">No theaters available.</p>
            <% } %>
        </div>
    </div>

</main>

<footer>
    &copy; 2025 MovieApp. All rights reserved.
</footer>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const theaters = document.querySelectorAll(".theater-item");

        theaters.forEach(theater => {
            theater.addEventListener("click", function () {
                const theaterId = theater.getAttribute("data-id");
                const movieId = "<%= selectedMovie != null ? selectedMovie.getMovieId() : "" %>";

                window.location.href = "/slot?movieId=" + movieId + "&theaterId=" + theaterId;
            });
        });
    });
</script>

</body>
</html>
