<%@page import="training.demo.entities.* "%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADD Training</title>
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
    <header>
        <h1>Training Admin Portal</h1>
    </header>
    <nav>
    <a href="openDashboard">Home Page</a>
    <a href="courseForm">Course</a>
    <a href="trainer">Trainer</a>
    <a href="training">Training</a>
    </nav>
	<% List<Trainer> trainer = (List) request.getAttribute("listOfTrainer");
	List<Course> course = (List) request.getAttribute("listOfCourse");
	int courseSize = course.size();
	int trainerSize = trainer.size();%>
	<h2 style="width:30%;margin:auto;margin-bottom:10px">Add Training</h2>
 
  <script>
        function filterCourses() {
            var input, filter, select, option, text, i;
            input = document.getElementById("courseFilterInput");
            filter = input.value.toUpperCase();
            select = document.getElementsByName("courseId")[0];
            option = select.getElementsByTagName("option");

            for (i = 0; i < option.length; i++) {
                text = option[i].textContent || option[i].innerText;
                if (text.toUpperCase().indexOf(filter) > -1) {
                    option[i].style.display = "";
                } else {
                    option[i].style.display = "none";
                }
            }
        }
    </script>
 
 
	<form action="addTraining" method="post">

 
		<table>
			<tr>
				<td>Course Name</td>
				<td>
					<select name="courseId">
					
					<option value="" disabled selected>Select course Name</option>
					<% for(int i =0;i<courseSize;i++){%>
					<option value="<%= course.get(i).getCourseId() %>" type="number"><%= course.get(i).getCourseName()%></option>
					<%} %>
					</select>
					</td>
			</tr>
			<tr>
				<td>Trainer Name</td>
				<td>
				<select name="trainerId">
				 <option value=""disabled selected>Select trainer Name</option>
					<% for(int i =0;i<trainerSize;i++){%>
					<option value="<%= trainer.get(i).getTrainerId() %>" type="number" placeholder="TrainerName"><%= trainer.get(i).getTrainerName()%></option>
					<%} %>
					</select>
					</td>
			</tr>
			<tr>
				<td>Start Date</td>
				<td><input type="date" name="start_date"
					placeholder="start date" min='24-08-2023' /></td>
			</tr>
			<tr>
				<td>End Date</td>
				<td><input type="date" name="end_date"
					placeholder="end date" /></td>
			</tr>
			<tr>
				<td>Fees</td>
				<td><input type="number" name="fees"
					placeholder="FEES" required /></td>
			</tr>
			<tr>
				<td>Discount</td>
				<td><input type="number" name="discount"
					placeholder="Discount" required /></td>
			</tr>
			<tr>
				<td>Batch Size</td>
				<td><input type="number" name="batchSize"
					placeholder="Batch Size" required /></td>
			</tr>
 
 
			<tr>
				<td><input type="reset" value="Reset" /> <input id="submit"
					type="submit" value="Submit" />
 
			</tr>
		</table>
	</form>
 
</body>
</html>