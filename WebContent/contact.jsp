<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<style>
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
	
	.container {
	  display: flex;
	  justify-content: center;
	}
	
	.ull {
	  display: flex;
	  flex-direction: column;
	  align-items: center;
	}
	
	.lii {
	  margin: 10px 0;
	  font-size: 18px;
	  font-weight: ;
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
	
	<br><br>
	<div class="container">
	  <ul class="ull">
	    <li class="lii">Developer name: Sumit Katkar</li>
	    <li class="lii">Email ID: katkarsumit1419@gmail.com</li>
	    <li class="lii">mobile no: 9730946142</a></li>
	    <li class="lii">Address: Pune, maharashtra</a></li>
	  </ul>
	</div>
	
</body>
</html>