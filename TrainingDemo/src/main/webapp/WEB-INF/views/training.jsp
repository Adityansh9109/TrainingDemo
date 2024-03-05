
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trainer Admin Portal</title>
<style>
    /* Reset default margin and padding */
    body, h1, h2, h3, p, button {
        margin: 0;
        padding: 0;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }

    header {
        background-color: #2980b9;
        color: #ecf0f1;
        text-align: center;
        padding: 20px 0;
    }

    nav {
        background-color: #34495e;
        text-align: center;
    }

    nav a {
        display: inline-block;
        color: #ecf0f1;
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
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    .button-container {
        text-align: center;
        margin-top: 30px;
    }

    .action-button {
        display: inline-block;
        background-color: #3ce7e7;
        color: #fff;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
        font-size: 18px;
        margin: 10px;
        cursor: pointer;
    }

    .action-button:hover {
        background-color: #462bc0;
    }
    
    /* Additional Styles */
    .info-box {
        background-color: #ecf0f1;
        padding: 15px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        text-align: center;
        margin-top: 30px;
    }
    
    .info-box h2 {
        font-size: 24px;
        margin-bottom: 10px;
        color: #333;
    }
    
    .feature-box {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        margin-top: 30px;
    }
    
    .feature-box h3 {
        font-size: 20px;
        color: #333;
    }
    
    .feature-box p {
        color: #666;
    }
    
    /* New Section Styles */
    .highlight-section {
        background-color: #34495e;
        color: #ecf0f1;
        padding: 40px 0;
        text-align: center;
        margin-top: 30px;
    }
    
    .highlight-section h2 {
        font-size: 32px;
        margin-bottom: 20px;
    }
</style>
</head>
<body>

<header>
    <h1>Trainer Admin Portal</h1>
</header>
<nav>
    <a href="openDashboard">Home Page</a>
    <a href="courseForm">Course</a>
    <a href="trainer">Trainer</a>
    <a href="training">Training</a>
</nav>

<div class="container">
    <div class="button-container">
        <button class="action-button"><a href="viewTraining">View Training</a></button>
        <button class="action-button"><a href="trainingForm">Add Training</a></button>
    </div>
    
    <div class="info-box">
        <h2>Welcome to the Trainer Admin Portal</h2>
        <p>Manage trainers, courses, and training sessions with ease.</p>
    </div>
    
  
<div class="highlight-section">
    <h2>Explore the Power of Training Management</h2>
    <p>Empower your team with streamlined administrative control.</p>
    <p>Stay organized, informed, and efficient with our intuitive tools.</p>
</div>

</body>
</html>
</html>



