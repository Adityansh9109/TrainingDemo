<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administration Portal</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            background-image: url("<c:url value="/resources/images/ib.jpg" />") ;
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
            background-color:  #fff4e3;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        /* Add this CSS code to your existing styles */
.link-button {
    display: block;
    text-align: center;
}
 
.link-button a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #3498db; /* Light blue background color */
    color: #fff; /* White text color */
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease, color 0.3s ease;
}
 
.link-button a:hover,
.link-button a:focus {
    background-color: #2980b9; /* Dark blue on hover/click */
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
        <!-- Your portal content goes here -->
        <h2>Welcome to the Training Administration Portal</h2>
        <p>This is the right place for training administrator. You can manage training here and make work easy.</p>
        <button class="link-button"><a href="login">Get Start</a></button>
    </div>
</body>
</html>
 