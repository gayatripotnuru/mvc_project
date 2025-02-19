<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in Page</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/index.css">
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
        <div class="signin-form">
            <h2>Sign in</h2>
            <form action="/movieapp/auth" method="post">
                <label>Enter your Phone Number:</label>
                <input type="tel" placeholder="Enter your phone number" name="username">
                <label>Create your Password:</label>
                <input type="password" placeholder="Create a password" name="password">
                <a href="#" class="forgot-password">Forget password?</a>
                
                <button type="submit">Sign in</button>
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