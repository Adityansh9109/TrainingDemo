<%@page import="java.util.Base64"%>
<%@page import="training.demo.entities.Trainer"%>
<%@page import="training.demo.entities.Training"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer dashborad</title>
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
		List<Trainer> listOfTrainer = (List)request.getAttribute("listOfTrainer");
	%>	
	<p></p>
	<table>
		<caption>Trainer List</caption>
		<tr>
			<th>S. No</th>
			<th>Trainer Name</th>
			<th>qualification</th>
			<th>Description</th>
			<th>year of experience</th>
			
		</tr>
		
		<!-- Dynamic No of rows depending upon records in the database -->
		
		<% 
			int serialNo = 0;
			for(Trainer trainer : listOfTrainer) {
				
				
			%>
		<tr>
			<td><%=trainer.getTrainerId() %></td>
			<td><%=trainer.getTrainerName() %></td>
			<td><%=trainer.getQualification()%></td>
			<td><%=trainer.getTrainerDescription()%></td>
			<td><%=trainer.getYear_of_exp() %></td>	
		
			<td>
                <button><a href="<%=request.getContextPath() %>/updateTrainer/<%=trainer.getTrainerId() %>"><img width =30 height=30 src="<c:url value="/resources/images/icons8-edit-94.png" />"></a></button>	
                </td>
			<td>
                <button onclick="confirmDelete('<%=request.getContextPath()%>/deletetrainer/<%=trainer.getTrainerId() %>')"><img width =30 height=30 src="<c:url value="/resources/images/icons8-delete-100.png"/>"></button>
                </td>
		
		</tr>
		
		
		<%} %>
		
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
        if (confirm("Are you sure you want to delete this trainer?")) {
            // If the user confirms, redirect to the delete URL
            window.location.href = deleteUrl;
        }
    }
</script>
</html>