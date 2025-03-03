<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .profile-card {
            background: #fff;
            width: 500px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            overflow: hidden;
            text-align: center;
            padding: 30px;
        }
        .profile-card h2 {
            margin: 0 0 15px;
            font-size: 24px;
            color: #333;
        }
        .profile-card p {
            margin: 8px 0;
            color: #555;
            font-size: 16px;
        }
        .profile-section {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .profile-section .section-box {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            text-align: left;
        }
        .profile-section .section-box a {
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
            font-size: 16px;
        }
        .profile-section .section-box a:hover {
            text-decoration: underline;
        }
        .logout-link {
            margin-top: 20px;
            display: inline-block;
            color: red;
            font-weight: bold;
            text-decoration: none;
        }
        .logout-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="profile-card">
    <h2>Hey, Welcome !</h2>
    <p>Email: </p>
    <p>Phone: </p>
    <p>Role: </p>

    <div class="profile-section">
        <div class="section-box">
            <a href="#">📢 Notifications</a>
        </div>
        <div class="section-box">
            <a href="#">📦 Your Orders</a>
        </div>
        <div class="section-box">
            <a href="#">❓ Help & Support</a>
        </div>
    </div>

    <a href="logout.jsp" class="logout-link">Logout</a>
</div>

</body>
</html>