<%@page import="java.util.Base64"%>
<%@page import="training.demo.entities.* "%>
 
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Training Dashborad</title>
 
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
    
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
 
p {
	width: 500px;
}
 
table, p {
	margin: auto;
	font-size: 20px;
}
 
caption {
	margin-bottom: 20px;
	text-decoration: underline;
	color: black;
}
 
th, td {
	padding: 5px;
}
 
a {
	text-decoration: none;
	width: 200px;
	
	color: black;
	padding: 5px;
	border-radius: 5px;
	margin-left: 10px;
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
    <nav>
    <a href="<%= request.getContextPath() %>/openDashboard">Home Page</a>
    <a href="<%= request.getContextPath() %>/courseForm">Course</a>
    <a href="<%= request.getContextPath() %>/trainer">Trainer</a>
    <a href="<%= request.getContextPath() %>/training">Training</a>
    </nav>
	<%
	List<Training> training = (List) request.getAttribute("listOfTraining");
	List<Trainer> trainer = (List) request.getAttribute("listOfTrainer");
	List<Course> course = (List) request.getAttribute("listOfCourse");
	int size = training.size();
 
	%>
 
	<table>
		<caption>Training Details</caption>
		<tr>
			<th>ID</th>
			<th>Course ID</th>
			<th>Course Name</th>
			<th>Trainer ID</th>
			<th>Trainer Name</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Fees</th>
			<th>Discount</th>
			<th>Batch Size</th>
			<th> discount </th>
			
 
		</tr>
 
		<!-- Dynamic No of rows depending upon records in the database -->
 
		<%
		int serialNo = 0;
		for (int i = 0;i <size;i++) {
		%>
		<tr>
			<td><%=training.get(i).getTrainingId()%></td>
			<td><%=training.get(i).getCourseId()%></td>
			<td><%=course.get(i).getCourseName()%></td>
			<td><%=training.get(i).getTrainerId()%></td>
			<td><%=trainer.get(i).getTrainerName()%></td>
			<td><%=training.get(i).getStart_date()%></td>
			<td><%=training.get(i).getEnd_date() %></td>
			<td><%=training.get(i).getFees()%></td>
			<td><%=training.get(i).getDiscount()%></td>
			<td><%=training.get(i).getBatchSize()%></td>
			<td><%=training.get(i).getDiscountedPrice()%></td>
 
			<td><button>
			<a href="<%=request.getContextPath()%>/Update_Training/<%=training.get(i).getTrainingId()%>"><img width =30 height=30 src="<c:url value="/resources/images/icons8-edit-94.png" />"></a>
			</button></td>
			<td>
			<button onclick="confirmDelete('<%= request.getContextPath() %>/delete_training/<%= training.get(i).getTrainingId() %>')"><img width =30 height=30 src="<c:url value="/resources/images/icons8-delete-100.png"/>"></button>
			</td>
		</tr>
		
		
		<%
		}
		%>
	</table>
	<button>
		   <a href="<%=request.getContextPath() %>/openDashboardTraining">Dashboard</a>
		</button>
 
	<p>
		<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
			out.print(message);
		}
		%>
		
 
	</p>
</body>
<script>
    function confirmDelete(deleteUrl) {
        if (confirm("Are you sure you want to delete this training?")) {
            // If the user confirms, navigate to the delete URL
            window.location.href = deleteUrl;
        }
    }
</script>

</html>