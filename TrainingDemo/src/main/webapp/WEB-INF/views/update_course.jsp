<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Form</title>
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
        margin: 0 auto;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 50%;
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
        color: black;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
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
        <h1>Training Admin Portal</h1>
    </header>
    <p></p>
    <h2 style="width:25%;margin:auto;margin-bottom:10px">Update Course</h2>
    <p></p>
<% 
	String ctx = application.getContextPath();
	//out.print(ctx);
	String targetUrl = ctx+"/updateCourse";
%>
<form:form modelAttribute="course" action="<%=targetUrl %>" method="post">
   <label for="courseId">Id:</label>
    <form:input path="courseId" /><br/>
    
    <label for="courseName">Title:</label>
    <form:input path="courseName"/><br/>

    <label for="description">Author:</label>
    <form:input path="description"/><br/>

    <label for="category">Genre:</label>
    <form:input path="category"/><br/>

    <label for="intendedAudience">Description:</label>
    <form:input path="intendedAudience" rows="4" cols="50"/><br/>

    <label for="benefits">Is Available:</label>
    <form:input path="benefits"/><br/>
    
    

    <button type="submit">Save course</button>
</form:form>

</body>
</html>
