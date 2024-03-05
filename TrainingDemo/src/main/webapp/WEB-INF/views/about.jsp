<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - Administration Portal</title>
    <style>
               /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            background-image: url("<c:url value="/resources/images/ab.jpg" />") ;
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #2c3e50;
            color: #fff;
            text-align: center;
            padding: 20px 0;
        }
        nav {
            background-color: #34495e;
            text-align: center;
        }
        nav a {
         display: inline-block;
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
             transition: background-color 0.3s ease;
        }
        nav a:hover {
            background-color: #233140;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff4e3;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        /* New styles for the About page content */
        .about-content {
            text-align: justify;
            line-height: 1.5;
            color: #333; /* Text color */
        }
        .team-section {
            margin-top: 30px;
        }
        .team-member {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        .team-member img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-right: 20px;
        }
        /* Color enhancements */
        h2, h3 {
            color: #333; /* Heading color */
        }
        .team-member p {
            color: #666; /* Team member details color */
        }
    </style>
</head>
<body>
    <header>
        <h1>Training Administration Portal</h1>
    </header>
    <nav>
        <a href="home">Home</a>
        <a href="login">Login</a>
        <a href="about">About</a>
        <a href="contact">Contact</a>
    </nav>
    <div class="container">
       <div class="about-content">
            <h2>About Us</h2>
            <p>Welcome to the Administration Portal! We are dedicated to providing innovative solutions for your administrative needs.</p>
            <p>Our mission is to simplify your tasks and improve your productivity. With our user-friendly platform, you can easily manage your organization's data and streamline your workflows.</p>
            <div class="team-section">
                <h3>Meet Our Team</h3>
                <div class="team-member">
                    <img src="<c:url value="/resources/images/Adityansh.jpg" />" alt="Team Member 1"> <!-- Replace 'your-image.jpg' with the actual image source -->
                    <p><strong style="color: #333;">Adityansh Sharma</strong><br>Lead Developer</p>
                </div>
                <div class="team-member">
                    <img src="<c:url value="/resources/images/Devraj.jpg" />" alt="Team Member 2">
                    <p><strong style="color: #333;">Devraj Singh Chauhan</strong><br>Lead Developer</p>
                </div>
            </div>
        </div>
        </div>
</body>
</html>