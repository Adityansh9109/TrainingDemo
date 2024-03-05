<%@page import="training.demo.entities.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Training</title>
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
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    legend {
        font-weight: bold;
        font-size: 18px;
    }

    select,
    input[type="date"],
    input[type="number"] {
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
 <% List<Trainer> trainer = (List) request.getAttribute("listOfTrainer");
	List<Course> course = (List) request.getAttribute("listOfCourse");
	int courseSize = course.size();
	int trainerSize = trainer.size();%>

    <p></p>
    <h2 style="width:25%;margin:auto;margin-bottom:10px">Update Training</h2>
    	<%
	
	Training training=(Training)request.getAttribute("trainingToupdate");
	
	%>
	
	
	<p></p>
 

	 
  
	<form
		action=" <%= request.getContextPath()%>/UpdateTraining/<%= training.getTrainingId() %>"
		method="post">
 
 
		<fieldset>
			<legend>Update Training Form</legend>
 <td>
					<select name="courseId"> 
					 <option value=""disabled selected>Select trainer ID</option>
					<% for(int i =0;i<courseSize;i++){%>
					<option value="<%= course.get(i).getCourseId() %>" type="number"<%= course.get(i).getCourseId() == training.getTrainerId() ? "selected":""  %>><%= course.get(i).getCourseName()%></option>
					<%} %>
					</select>
					</td>

				<td>
				<select name="trainerId">
				<option value=""disabled selected>Select trainer ID</option>
					<% for(int i =0;i<trainerSize;i++){%>
					<option value="<%= trainer.get(i).getTrainerId() %>" type="number"><%= trainer.get(i).getTrainerName()%></option>
					<%} %>
					</select>
					</td>
 
				<input type="date"
				name="start_date" value="<%=training.getStart_date()%>"
				placeholder="start date" /><br />
 
				<input type="date"
				name="end_date" value="<%=training.getEnd_date()%>"
				placeholder="End date" /><br /> 
 
				<input type="number" name="fees"
				value="<%=training.getFees()%>" placeholder="FFES" /><br />
 
				<input type="number" name="discount"
				value="<%=training.getDiscount()%>" placeholder="Discount" /><br />
 
				<input type="number" name="batchSize"
				value="<%=training.getBatchSize()%>" placeholder="Batch Size" /><br />
 
			 <input type="submit" value="Submit">
			 
		</fieldset>
	</form>
 
 <button>
		   <a href="<%=request.getContextPath() %>/openDashboardTraining">Dashboard</a>
		</button>
</body>
</html>
	