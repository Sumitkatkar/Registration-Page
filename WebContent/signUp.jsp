<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sign Up</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	<script>
		function validateForm() {
			var username = document.forms["signupForm"]["username"].value;
			var password = document.forms["signupForm"]["password"].value;
			var email = document.forms["signupForm"]["email"].value;
			
			// Email validation using regular expression
			var emailRegex = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
			if (!emailRegex.test(email)) {
				alert("Please enter a valid email address.");
				return false;
			}
			
			// Password validation: at least 8 characters with at least one uppercase letter, one lowercase letter, one number, and one special character
			var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
			if (!passwordRegex.test(password)) {
				alert("Please enter a valid password.\n\nPassword must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, one number, and one special character.");
				return false;
			}
		}
	</script>
	
</head>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f1f1f1;
}

h1 {
	text-align: center;
}

form {
	width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0px 0px 10px #ccc;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"], input[type="password"], input[type="email"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 3px;
	border: 1px solid #ccc;
}

input[type="submit"] {
	display: block;
	width: 100%;
	padding: 10px;
	background-color: #4CAF50;
	color: #fff;
	border-radius: 3px;
	border: none;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #3e8e41;
}

</style>

<body>
	<h1>Sign Up</h1>
	
	<form name="signupForm" action="signup" onsubmit="return validateForm()">
		
		<label for="username">Username:</label>
		<input type="text" id="username" name="username" required><br>
		
		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required><br>
		
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required><br>
		
		<input type="submit" value="Submit">
		
	</form>
	
</body>
</html>
