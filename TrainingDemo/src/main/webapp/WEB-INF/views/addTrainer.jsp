<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Trainer</title>
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
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
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
        <h1>Training Administration Portal</h1>
    </header>
    <nav>
    <a href="openDashboard">Home Page</a>
    <a href="courseForm">Course</a>
    <a href="trainer">Trainer</a>
    <a href="training">Training</a>
    </nav>
	
	<h2 style="width:20%;margin:auto;margin-bottom:10px">Add Trainer</h2>
 
	<form action="register" method="post">
 
		<table>
			<tr>			
				<td>Trainer Name</td>
				<td><input type="text" name="trainerName"
					placeholder="Trainer Name" required /></td>
			</tr>
			<tr>
				<td>Qualification</td>
				<td><input type="text" name="qualification"
					placeholder="Qualification"  required/></td>
			</tr>
			<tr>
				<td>Trainer Description</td>
				<td><input type="text" name="trainerDescription" placeholder="Trainer Description" required /></td>
			</tr>
			<tr>
				<td>Year of Experience</td>
				<td><input type="number" name="year_of_exp" placeholder="Year of Experience" required/></td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="reset" value="Reset" /> 
				<input id="submit"type="submit" value="Submit" />
			</tr>
		</table>
	</form>
 
</body>
</html>