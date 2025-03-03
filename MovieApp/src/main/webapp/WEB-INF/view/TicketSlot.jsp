<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.MovieApp.MovieApp.Entity.Movies, com.MovieApp.MovieApp.Entity.Theater, com.MovieApp.MovieApp.Entity.ShowTimes" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Slots</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/TicketSlot.css">
</head>
<body>

<header class="main-header">
    <img src="https://i.pinimg.com/736x/e5/db/f2/e5dbf27053bcb6c8a4b187244d44078a.jpg" alt="Logo">
    <button onclick="window.location.href='${pageContext.request.contextPath}/user/userprofile'">Profile</button>
</header>

<main>
    <div class="content">
        <!-- Movie Profile Section -->
        <div class="movie-profile">
            <% 
                Movies selectedMovie = (Movies) request.getAttribute("selectedMovie"); 
                if (selectedMovie != null) { 
            %>
                <img src="<%= selectedMovie.getMovieImageUrl() %>" alt="Movie Poster">
                <h3><%= selectedMovie.getTitle() %></h3>
                <p>Genre: <%= selectedMovie.getGenre() %></p>
                <p>Duration: <%= selectedMovie.getDuration() %> minutes</p>
                <p>Language: <%= selectedMovie.getLanguage() %></p>
            <% } else { %>
                <p style="color: red;">Movie details not available.</p>
            <% } %>
        </div>

        <!-- Showtime Section -->
        <div class="theater-section">
            <h1>Available Showtimes</h1>

            <%
                List<ShowTimes> showtimes = (List<ShowTimes>) request.getAttribute("showtimes");
                if (showtimes != null && !showtimes.isEmpty()) {
            %>
                <table>
                    <thead>
                        <tr>
                            <th>Movie</th>
                            <th>Theater</th>
                            <th>Start Time</th>
                            <th>End Time</th>
                            <th>Date</th>
                            <th>Seats Available</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (ShowTimes showtime : showtimes) {
                        %>
                            <tr>
                                <td><%= showtime.getMovie().getTitle() %></td>
                                <td><%= showtime.getTheater().getName() %></td>
                                <td><%= showtime.getStartTime() %></td>
                                <td><%= showtime.getEndTime() %></td>
                                <td><%= showtime.getStartDate() %></td>
                                <td><%= showtime.getAvailableSeats() %></td>
                                <td>
                                    <button onclick="goToSeatSelection('<%= showtime.getMovie().getMovieId() %>', '<%= showtime.getTheater().getTheaterId() %>')">
                                        Book Now
                                    </button>
                                </td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            <%
                } else {
            %>
                <p style="color: red; font-weight: bold; text-align: center;">No showtimes available for this movie in the selected theater.</p>
            <%
                }
            %>
        </div>
    </div>
</main>

<footer>
    &copy; 2025 Your Company. All rights reserved.
</footer>

<script>
function goToSeatSelection(movieId, theaterId) {
    window.location.href = '/seat?movieId=' + movieId + '&theaterId=' + theaterId;
}
</script>

</body>
</html>
