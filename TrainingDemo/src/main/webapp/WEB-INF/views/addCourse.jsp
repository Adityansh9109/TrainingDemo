<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Course</title>
        <style>
               body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }
        nav {
            background-color: #444;
            text-align: center;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
        }
        nav a:hover {
            background-color: #555;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

        h2 {
            margin-bottom: 20px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: auto;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        textarea,
        select {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="checkbox"] {
            margin-right: 5px;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<% 
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
%>
    <header>
        <h1>Trainer Administration Portal</h1>
    </header>
    <nav>
    	<a href="openDashboard">Home Page</a>
    	<a href="courseForm">Course</a>
    	<a href="trainer">Trainer</a>
    	<a href="training">Training</a>
    </nav>

<h2 style="width:20%;margin:auto;margin-bottom:10px">Add Course</h2>

<form action="addcourse" method="post">
    <label for="courseName">Course</label>
    <input type="text" id="courseName" name="courseName" required><br/>

    <label for="description">description</label>
    <input type="text" id="description" name="description" required><br/>

    <label for="category">category</label>
    <input type="text" id="category" name="category" required><br/>

    <label for="intendedAudience">interdedAudience</label>
    <textarea id="intendedAudience" name="intendedAudience" rows="4" cols="50" required></textarea><br/>
    
      <label for="benefits">Benefits</label>
    <input type="text" id="benefits" name="benefits" required><br/>
 
    <button type="submit">Save Course</button>
</form>

</body>
</html>