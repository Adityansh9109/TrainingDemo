<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Administration Portal</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            background-image: url("<c:url value='/resources/images/hb.jpg' />");
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
        <!-- Your home page content goes here -->
        <h2>Welcome to the Training Administration Portal</h2>
        <p>This portal is your central hub for managing and delivering training programs effectively. Whether you're an administrator, trainer, or learner, our platform simplifies the training process for you.</p>
        <p>Key Features:</p>
        <ul>
            <li>User-Friendly Interface: Navigate with ease, whether you're managing courses or tracking progress.</li>
            <li>Course Management: Create, customize, and assign courses effortlessly.</li>
            <li>User Management: Efficiently manage user accounts and permissions.</li>
            <li>Reporting and Analytics: Gain valuable insights for data-driven decisions.</li>
            <li>Notifications: Stay informed with automated reminders.</li>
            <li>Certification Tracking: Track certifications and compliance.</li>
        </ul>
        <p>Why Choose Us:</p>
        <ul>
            <li>Reliability: Our platform guarantees uptime for uninterrupted training.</li>
            <li>Scalability: Ideal for small teams and large organizations alike.</li>
            <li>Security: Your data is secure with us.</li>
            <li>24/7 Support: Our support team is available whenever you need assistance.</li>
        </ul>
    </div>
</body>
</html>