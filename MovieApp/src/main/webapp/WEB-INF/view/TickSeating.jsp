<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.MovieApp.MovieApp.Entity.Movies" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Seating</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/TickSeating.css">
    <script>
        let selectedSeats = [];
        const seatPrice = 200; // ₹200 per seat

        function toggleSeat(seatId) {
            const seatIndex = selectedSeats.indexOf(seatId);
            const seatElement = document.getElementById(seatId);

            if (seatIndex > -1) {
                // Seat already selected, unselect it
                selectedSeats.splice(seatIndex, 1);
                seatElement.classList.remove('selected');
            } else {
                // Select seat
                selectedSeats.push(seatId);
                seatElement.classList.add('selected');
            }

            updateSummary();
        }

        function updateSummary() {
            const totalSeats = selectedSeats.length;
            const totalPrice = totalSeats * seatPrice;

            document.getElementById('seat-count').innerText = totalSeats;
            document.getElementById('total-price').innerText = totalPrice;
            document.getElementById('selected-seats').value = selectedSeats.join(',');
        }

        function confirmBooking() {
            if (selectedSeats.length === 0) {
                alert('Please select at least one seat.');
                return false;
            }
            return true;
        }
    </script>
    <style>
        .seat {
            width: 30px;
            height: 30px;
            margin: 5px;
            background-color: lightgray;
            text-align: center;
            line-height: 30px;
            cursor: pointer;
            display: inline-block;
        }

        .seat.selected {
            background-color: green;
            color: white;
        }

        .summary {
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
<header class="main-header">
    <img src="https://i.pinimg.com/736x/e5/db/f2/e5dbf27053bcb6c8a4b187244d44078a.jpg" alt="Logo">
    <button onclick="window.location.href='${pageContext.request.contextPath}/user/userprofile'">Profile</button>
</header>

<main>
    <div class="container">
        <div class="main-content">
            <div class="movie-details">
                <%
                    Movies selectedMovie = (Movies) request.getAttribute("selectedMovie");
                    if (selectedMovie != null) {
                %>
                <img src="<%= selectedMovie.getMovieImageUrl() %>" alt="Movie Poster">
                <% } else { %>
                <p style="color: red;">Movie details not available.</p>
                <% } %>
            </div>

            <div class="seat-selection">
                <h2>Select Seats</h2>

                <div class="seat-grid">
                    <% String[] rows = {"A", "B", "C", "D", "E", "F", "G"}; %>
                    <% for (String row : rows) {
                        for (int i = 1; i <= 10; i++) {
                            String seatId = row + i;
                    %>
                    <div class="seat" id="<%= seatId %>" onclick="toggleSeat('<%= seatId %>')"><%= seatId %></div>
                    <% } } %>
                </div>

                <div class="summary">
                    Selected Seats: <span id="seat-count">0</span><br>
                    Total Price: ₹<span id="total-price">0</span>
                </div>
                 <div class="payment-section">
                        <button type="submit" class="confirm-btn" onclick="submitOrderSummary()" >Confirm</button>
                        <button type="button" class="cancel-btn" onclick="window.history.back()">Cancel</button>
                    </div>
               
            </div>
        </div>
    </div>
</main>

<form id="orderSummaryForm" action="${pageContext.request.contextPath}/orderSummary" method="post" style="display: none;">
    <input type="hidden" id="selected-seats" name="selectedSeats">
    <input type="hidden" id="total-price-input" name="totalPrice">

    <!-- Example placeholders for movie details (pass these dynamically if needed) -->
    <input type="hidden" name="movieName" value="<%= selectedMovie != null ? selectedMovie.getTitle() : "Unknown" %>">
    <input type="hidden" name="theaterName" value="<%= request.getAttribute("theatername") %>">
<input type="hidden" name="showDate" value="<%= request.getAttribute("showdate") %>">
<input type="hidden" name="showTime" value="<%= request.getAttribute("showtime") %>">
    
</form>

<script>


function submitOrderSummary() {
    if (selectedSeats.length === 0) {
        alert('Please select at least one seat.');
        return;
    }

    // Set selected seats and total price in hidden form fields
    document.getElementById('selected-seats').value = selectedSeats.join(',');
    document.getElementById('total-price-input').value = selectedSeats.length * seatPrice;

    // Submit the form
    document.getElementById('orderSummaryForm').submit();
}

</script>
</body>
</html>
