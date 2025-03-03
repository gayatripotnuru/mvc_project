<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.MovieApp.MovieApp.Entity.Movies" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/movieprofile.css">
</head>

<body>

<header class="main-header">
    <img src="https://i.pinimg.com/736x/e5/db/f2/e5dbf27053bcb6c8a4b187244d44078a.jpg" alt="Logo">
    <button onclick="window.location.href='${pageContext.request.contextPath}/user/userprofile'">Profile</button>
</header>

<main class="movie-container">
    <section class="movie-details">
        <%
            Movies selectedMovie = (Movies) request.getAttribute("selectedMovie");
            if (selectedMovie != null) {
        %>
            <div class="movie-poster">
                <img src="<%= selectedMovie.getMovieImageUrl() %>" alt="Movie Poster">
            </div>
            
            <div class="movie-info">
                <h2><%= selectedMovie.getTitle() %></h2>
                <p><%= selectedMovie.getDescription() %></p>
                <p><b>Genre:</b> <%= selectedMovie.getGenre() %></p>
                <p><b>Duration:</b> <%= selectedMovie.getDuration() %> minutes</p>
                <p><b>Language:</b> <%= selectedMovie.getLanguage() %></p>

                <button class="book-ticket" onclick="gotoSelectTheater()">Book Ticket</button>
            </div>
        <% } else { %>
            <p style="color: red;">Movie details not found.</p>
        <% } %>
    </section>
</main>

<footer>
    &copy; 2025 Your Company. All rights reserved.
</footer>

<script>
    function gotoSelectTheater() {
        let movieId = "<%= selectedMovie != null ? selectedMovie.getMovieId() : "" %>";
        window.location.href = "/movieapp/selectTheater?movieId=" + movieId;
    }
</script>

</body>
</html>
