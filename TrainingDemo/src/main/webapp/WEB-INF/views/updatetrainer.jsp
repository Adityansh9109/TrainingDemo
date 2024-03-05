<%@page import="training.demo.entities.Trainer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Validation</title>
    <style>
        /* Add your CSS styles here */
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

        fieldset {
            border: 1px solid rgb(255, 232, 57);
            width: 60%; /* Adjust the width as needed */
            margin: 20px auto;
            padding: 40px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        legend {
            font-weight: bold;
            font-size: 18px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
<% 
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
%>
<header>
    <h1>Training Admin Portal</h1>
</header>

<p></p>
<h2 style="width:25%;margin:auto;margin-bottom:10px">Update Training</h2>
<%
    Trainer trainer = (Trainer) request.getAttribute("trainerToupdate");
    
%>

<p></p>
<form action="<%= request.getContextPath()%>/update/<%= trainer.getTrainerId() %>" method="post">
    <fieldset>
        <legend>Update Trainer Form</legend>
        <label for="trainerName">Trainer Name:</label>
        <input type="text" id="trainerName" name="trainerName" value="<%=trainer.getTrainerName()%>" placeholder="Enter Trainer Name" /><br />

        <label for="qualification">Qualification:</label>
        <input type="text" id="qualification" name="qualification" value="<%=trainer.getQualification()%>" placeholder="Enter Qualification" /><br />

        <label for="trainerDescription">Trainer Description:</label>
        <input type="text" id="trainerDescription" name="trainerDescription" value="<%=trainer.getTrainerDescription()%>" placeholder="Enter Trainer Description" /><br />

        <label for="year_of_exp">Years of Experience:</label>
        <input type="text" id="year_of_exp" name="year_of_exp" value="<%=trainer.getYear_of_exp()%>" placeholder="Enter Years of Experience" /><br />
        
        <input type="submit" value="Submit">
    </fieldset>
</form>

<p>


</p>


</body>
</html>