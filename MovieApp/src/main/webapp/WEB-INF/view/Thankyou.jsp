<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Thank You!</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/Thankyou.css">
</head>
<body>
  <div class="thank-you-container">
    <div class="thank-you-card">
      <div class="thank-you-header">
        <h1>🎉 Thank You! 🎉</h1>
        <p>Your booking has been successfully confirmed.</p>
      </div>
      <div class="thank-you-content">
        <p>We appreciate your choice and hope you enjoy your movie experience.</p>
      </div>
      <div class="thank-you-footer">
        <button onclick="goHome()">Go to Home</button>
      </div>
    </div>
  </div>

  <script>
    function goHome() {
      window.location.href = "dashboard";
    }
  </script>
</body>
</html>
