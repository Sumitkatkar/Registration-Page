<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
  body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }

    #login-form {
      width: 400px;
      margin: 50px auto;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
      border-radius: 5px;
     
    }
    form {
	  display: flex;
	  flex-direction: column;
	  justify-content: center;
	  align-items: center;
	  height: 100vh; /* Make the form take up the full height of the viewport */
	}
    .form-field {
      margin-bottom: 20px;
    }
    
    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }
    
    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #ccc;
      box-shadow: inset 0px 1px 3px rgba(0, 0, 0, 0.1);
    }
    
    input[type="submit"] {
      display: block;
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    
    input[type="submit"]:hover {
      background-color: #3e8e41;
    }
    
    .error {
      color: red;
      font-size: 14px;
      margin-top: 5px;
    }
</style>

</head>

<body>
	<form action="login" method="get">
	<div class="form-field">
      <input type="text" name="uname" placeholder="Email / Username"  required>
    </div>
    
    <div class="form-field">
      <input type="password" name="pass" placeholder="Password"   required>
    </div>
    
    <div class="form-field">
      <input type="submit" value="Login" name="login">
    </div>
     
     if not registered <a href= " signUp.jsp " > sign up </a>
	</form>
	
	
	

</body>

</html>