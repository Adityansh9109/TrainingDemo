<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Administration Portal</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            background-image: url("<c:url value="/resources/images/lb.jpg" />") ;
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
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff4e3;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center; /* Center align the container */
        }
        .container h2 {
            text-align: center;
            color: black;
        }
        .input-group {
            margin-bottom: 20px;
            text-align: center; /* Center align the input labels and inputs */
        }
        label {
            display: block;
            margin-bottom: 5px;
            text-align: center; /* Center align the labels */
        }
        input[type="text"],
        input[type="password"] {
            width: 60%; /* Reduce input width to 60% */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px; /* Reduce font size for input fields */
            margin: 0 auto; /* Center align the input fields */
        }
        .button-group {
            text-align: center; /* Center align the buttons */
        }
        button[type="submit"],
        button[type="reset"] {
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin: 0 10px; /* Add margin between the buttons */
        }
        button[type="submit"]:hover,
        button[type="reset"]:hover {
            background-color: #2980b9;
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
        <h2>Login</h2>
        <form action="adminLogin" method="post" >
            <div class="input-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="button-group">
                <button type="submit">Login</button>
                <button type="reset">Reset</button>
            </div>
        </form>
        <p>
		<% 
			String result = (String)request.getAttribute("result"); 
			if(result!=null) {
				out.print(result);
			}
		%>
	
	</p>
        
        
        
    </div>
    
    
     <script>
        history.pushState(null, document.title, location.href);
        window.addEventListener('popstate', function(event) {
            history.pushState(null, document.title, location.href);
        });
    </script>
    	
    
    
</body>
</html>