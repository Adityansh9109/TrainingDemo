<%@page import="java.util.Base64"%>
<%@page import="training.demo.entities.Course"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Dashboard</title>

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
            background-color: #233140;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
		margin-bottom:20px;
		text-decoration: underline;
		color: black;
	}
	
	th, td {
		padding:5px;
	}
	
	a {
		text-decoration: none;
		width: 100px;		
		color: black;
		padding: 5px;
		border-radius: 5px;
		margin-left:10px;
	}
</style>
</head>
<body>

<% 
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
%>
    <header>
        <h1>Trainer Admin Portal</h1>
    </header>
   <nav>
    <a href="<%= request.getContextPath() %>/openDashboard">Home Page</a>
    <a href="<%= request.getContextPath() %>/courseForm">Course</a>
    <a href="<%= request.getContextPath() %>/trainer">Trainer</a>
    <a href="<%= request.getContextPath() %>/training">Training</a>
    <a href="<%= request.getContextPath() %> "logout" style="float: right;">Logout</a>
    </nav>
	<% 
		List<Course> listOfCourse = (List)request.getAttribute("listOfCourse");
	%>
	<p></p>
	<table>
		<caption>Course List</caption>
		<tr>
			<th>S.No</th>
			<th>Course Name</th>
			<th>course Description</th>
			<th>Category</th>
			<th>Audience</th>
			<th>benefits</th>
			
		</tr>
		
		<!-- Dynamic No of rows depending upon records in the database -->
		
<% 
			int serialNo = 0;
			for(Course course : listOfCourse) {
				
				
			%>
		<tr>
			<td><%= course.getCourseId() %></td>
			<td><%= course.getCourseName() %></td>
			<td><%= course.getDescription()%></td>
			<td><%= course.getCategory()%></td>
			<td><%= course.getIntendedAudience()%></td>
			<td><%= course.getBenefits()%></td>
			
			<td>
                <button><a href="<%= request.getContextPath() %>/showUpdateCourseFormPage/<%= course.getCourseId() %>"><img width =30 height=30 src="<c:url value="/resources/images/icons8-edit-94.png" />"></a></button>
			</td>
			<td>
                <button onclick="confirmDelete('<%= request.getContextPath() %>/delete_course/<%= course.getCourseId() %>')"><img width =30 height=30 src="<c:url value="/resources/images/icons8-delete-100.png"/>"></button>
			</td>
		
		</tr>
		<%} %>
        <tr>
            <td colspan = "8" style="padding:10px;text-align:center"><button><a href="<%= request.getContextPath() %>/showAddCourseFormPage">Add course</a></button></td>	
            </tr>
          <tr>
            <td colspan = "8" style="padding:10px;text-align:center"><button><a href="<%=request.getContextPath() %>/openDashboardTraining">Dashboard</a></button></td>	
            </tr>  
            
            
      

	</table>	
		<p>
		<% 
			String message = (String)request.getAttribute("message"); 
			if(message!=null) {
				out.print(message);
			}
		%>
	
	</p>
</body>

<script>
    function confirmDelete(deleteUrl) {
        if (confirm("Are you sure you want to delete this course?")) {
            // If the user confirms, redirect to the delete URL
            window.location.href = deleteUrl;
        }
    }
</script>
</html>