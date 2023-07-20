<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

 	<style>
        form {
            width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: none;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
        }

        button[type="submit"] {
            display: block;
            margin: 0 auto;
            padding: 10px 20px;
            background-color: red;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        button[type="submit"]:hover {
            background-color: #3e8e41;
        }
        
         nav {
		  background-color: #f2f2f2;
		  height: 50px;
		  display: flex;
		  justify-content: center;
		}
		
		ul {
		  list-style-type: none;
		  margin: 0;
		  padding: 0;
		  display: flex;
		  justify-content: center;
		}
	
		li {
		  margin: 0 10px;
		}
		
		a {
		  display: block;
		  padding: 10px;
		  text-decoration: none;
		  color: #333;
		  font-weight: bold;
		}
		
	   h2{
	   color:red;
	   }
 	</style>
</head>
<body>
	<Marquee direction="left"> <h2>Welcome ${username}</h2> </marquee>
		<nav>
		  <ul>
		    <li><a href="second.jsp">Home</a></li>
		    <li><a href="form.jsp">Registraion form</a></li>
		    <li><a href="form_details.jsp">Form Details</a></li>
		    <li><a href="videos.jsp">video</a></li>
		    <li><a href="contact.jsp">Contact</a></li>
		    <li><a href="index.jsp">Log out</a></li>
		  </ul>
		</nav>
	
	<h2>Registration Form</h2>
	<form id="registration-form" action="registraion">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" placeholder="Enter your name" pattern="[A-Za-z ]+" required>
		
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" placeholder="Enter your email"  required>
		
		<label for="age">Age:</label>
		<input type="text" id="age" name="age" placeholder="Enter your age" required>
		
		<label for="city">City:</label>
		<input type="text" id="city" name="city" placeholder="enter your city" required>
		
		<button type="submit" id="submit-button">Submit</button>
	</form>
	
	
	
</body>
</html>