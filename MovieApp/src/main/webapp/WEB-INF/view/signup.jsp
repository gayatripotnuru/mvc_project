<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/signup.css">
</head>
<body>
     <header id="main-header">
        <img src="https://i.pinimg.com/736x/e5/db/f2/e5dbf27053bcb6c8a4b187244d44078a.jpg" alt="Logo">
        <div class="auth-buttons">
            <button onclick="goToLogin()">Sign in</button>
            <button onclick="goToSignup()">Sign up</button>
        </div>
    </header>

    <main class="container">
        <div class="signup-form">
            <h2>Sign Up</h2>

            <!-- Display success message if available -->
            <c:if test="${not empty message}">
                <div class="message">${message}</div>
            </c:if>

            <form action="${pageContext.request.contextPath}/signup" method="post">
                <label for="name">Enter your Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>

                <label for="phone">Enter your Phone Number:</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
                
                <label for="email">Enter your Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>

                <label for="password">Create your Password:</label>
                <input type="password" id="password" name="password" placeholder="Create a password" required>

                <button type="submit">Sign up</button>
            </form>
        </div>
    </main>

    <footer>
        &copy; 2025 MovieApp. All rights reserved.
    </footer>

    <script>
        function goToLogin() {
            window.location.href = "${pageContext.request.contextPath}/movieapp/login";
        }

        function goToSignup() {
            window.location.href = "${pageContext.request.contextPath}/signup";
        }
    </script>
</body>
</html>
