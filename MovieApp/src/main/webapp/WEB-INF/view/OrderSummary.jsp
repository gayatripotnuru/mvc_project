<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.MovieApp.MovieApp.Entity.Movies" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Summary</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/OrderSummary.css">
</head>
<body>

<header class="main-header">
    <img src="https://i.pinimg.com/736x/e5/db/f2/e5dbf27053bcb6c8a4b187244d44078a.jpg" alt="Logo">
    <button onclick="window.location.href='${pageContext.request.contextPath}/user/userprofile'">Profile</button>
</header>

<div class="summary-info">
    <h3>Order Summary</h3>
    <p><strong>Movie Name:</strong> ${movieName}</p>
    <p><strong>Theater:</strong> <%= request.getAttribute("theaterName") != null ? request.getAttribute("theaterName") : "Not Provided" %></p>
    <p><strong>Date:</strong> <%= request.getAttribute("showDate") != null ? request.getAttribute("showDate") : "Not Provided" %></p>
    <p><strong>Time:</strong> <%=request.getAttribute("showTime") != null ? request.getAttribute("showTime") : "Not Provided" %></p>
    <p><strong>Selected Seats:</strong> ${selectedSeats}</p>
    <p><strong>Total Amount:</strong> ₹${totalPrice}</p>
    <button class="confirm-button" onclick="gotopayment()">Confirm Booking</button>
</div>

<footer>
    &copy; 2025 Your Company. All rights reserved.
</footer>

<script>
    function gotopayment() {
        window.location.href = "/payment";
    }
</script>

</body>
</html>
