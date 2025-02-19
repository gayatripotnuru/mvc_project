<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Page</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/signup.css">
</head>
<body>
    <header id="main-header">
        <img src="logo.png" alt="logo">
        <div class="auth-buttons">
          <button onclick="button()">Sign in</button>
            <button onclick="button1()">Sign up</button>
        </div>
    </header>
    
    <main class="container">
        <div class="signup-form">
            <h2>Sign up</h2>
            <form>
                <label>Enter your Name:</label>
                <input type="text" placeholder="Enter your name">
                
                <label>Enter your Phone Number:</label>
                <input type="tel" placeholder="Enter your phone number">
                
                <label>Create your Password:</label>
                <input type="password" placeholder="Create a password">
                
                <button type="submit">Sign up</button>
            </form>
        </div>
    </main>
    <footer>
        &copy; 2025 Your Company. All rights reserved.
    </footer>
   <script>
    function button() {
        window.location.href = "/movieapp/login"; // Matches LoginController's mapping
    }

    function button1() {
        window.location.href = "/signup"; // Matches SignupController's mapping
    }
</script>
</body>
</html>
