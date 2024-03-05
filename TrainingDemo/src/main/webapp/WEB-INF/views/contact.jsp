<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - Administration Portal</title>
    <style>
        /* Reset default margin and padding */
        body, h1, h2, h3, p {
            margin: 0;
            padding: 0;
        }

        /* Add a background gradient */
        body {
            background: linear-gradient(to bottom, #f2f2f2, #e0e0e0);
        }

        /* Improved header style */
        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            font-family: 'Arial', sans-serif;
        }

        /* Navigation bar */
        nav {
            background-color: #444;
            text-align: center;
            padding: 10px 0;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
        }
        nav a:hover {
            background-color: #555;
        }

        /* Container for content */
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            font-family: Arial, sans-serif;
        }

        /* Contact section */
        #contact {
            padding: 50px 0;
            text-align: center;
            background-color: black;
        }
        .section-heading {
            color: #333;
            font-family: 'Anton', sans-serif;
            letter-spacing: 2px;
            margin-bottom: 20px;
        }
        .section-subheading {
            color: #777;
            margin-bottom: 40px;
        }

        /* Form styling */
        .contact-form {
            margin-top: 20px;
        }
        .form-group {
            margin-bottom: 25px;
        }
        .form-control {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
        }
        .form-control:focus {
            outline: none;
            border-color: #555;
        }
        .btn-submit {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 15px 30px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .btn-submit:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <header>
        <h1>Administration Portal</h1>
    </header>
    <nav>
        <a href="home">Home</a>
        <a href="login">Login</a>
        <a href="about">About</a>
        <a href="contact">Contact</a>
    </nav>
    <div class="container">
        <h2 class="section-heading">Contact Us</h2>
        <p class="section-subheading">This is the Contact page of your administration portal. You can provide contact information and a contact form here.</p>
    </div>
    <div class="container contact-form">
        <form action="https://formsubmit.co/adityanshsharma180@gmail.com" method="POST">
            <input type="hidden" name="_captcha" value="false">
            <div class="form-group">
                <input type="text" name="name" class="form-control" placeholder="Your name" required>
            </div>
            <div class="form-group">
                <input type="email" name="email" class="form-control" placeholder="Your email" required>
            </div>
            <div class="form-group">
                <textarea name="message" class="form-control" placeholder="Your message here" required></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn-submit">Send</button>
            </div>
        </form>
    </div>
</body>
</html>