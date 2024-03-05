<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*" %>
<%@page import="training.demo.entities.Course" %>
<%@page import="training.demo.entities.Trainer" %>
<%@page import="training.demo.entities.Training" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home page</title>
<style>
    /* Reset default margin and padding */
    body, h1, h2, h3, p, button {
        margin: 0;
        padding: 0;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #369fa7;
       
        background-size: cover;
        background-attachment: fixed; /* Keeps the background fixed */
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
        color: #ecf0f1;
        text-decoration: none;
        padding: 10px 20px;
        transition: background-color 0.3s ease;
    }

    nav a:hover {
        background-color: #2c3e50;
    }

    .container {
        max-width: 90%; /* Set the container width to 90% of the screen */
        margin: 20px auto;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        background-color: rgba(255, 255, 255, 0.8); /* Add a semi-transparent white background */
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between; /* Distribute space between cards */
    }

    .card {
        width: 30%; /* Equal width for all cards */
        margin: 20px 0;
        text-align: center; /* Center the text and button */
        background-color: #fff; /* Add a white background for the card */
        border-radius: 5px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    .card img {
        width: 300px;
        height:300px;
    }

    .link-button {
        display: block;
        background-color: #3498db;
        color: #fff;
        text-decoration: none;
        padding: 10px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
        font-size: 18px;
        margin: 10px auto; /* Center the button horizontally */
        cursor: pointer; /* Add a cursor pointer on hover */
    }

    .link-button:hover {
        background-color: #2980b9;
    }
</style>
</head>
<body>

<header>
    <h1>Training Administration Portal</h1>
</header>
<nav>
    <a href="openDashboard">Home Page</a>
    <a href="courseForm">Course</a>
    <a href="trainer">Trainer</a>
    <a href="training">Training</a>
    <a href="javascript:void(0);" onclick="confirmLogout()" style="float: right;">Logout</a>
</nav>

<div class="background-section">
<div class="container">
    <!-- Card 1 -->
    <div class="card">
        <img src="<c:url value="/resources/images/course.jpg" />">
        <button class="link-button"><a href="courseForm">Course</a></button>
    </div>

    <!-- Card 2 -->
    <div class="card">
        <img src="<c:url value="/resources/images/trainer.jpg" />">
        <button class="link-button"><a href="trainer">Trainer</a></button>
    </div>

    <!-- Card 3 -->
    <div class="card">
        <img src="<c:url value="/resources/images/training.jpg" />">
        <button class="link-button"><a href="training">Training</a></button>
    </div>
</div>
</div>

</body>
<script>
    function confirmLogout() {
        if (confirm("Are you sure you want to log out?")) {
            // If the user confirms, proceed with the logout action
            window.location.href = "logout"; // Replace "logout" with the actual URL for logging out
        }
    }
</script>
</html>
