<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@
  		page import="java.sql.*"
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	 <style>

	.table-container {
	  margin: 20px;
	  border: 1px solid #ccc;
	  padding: 10px;
	}
	
	
	table td:first-child {
	  font-weight: ;
	  padding: 5px;
	}
	
	
	table td.value {
	  padding: 5px;
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
	
	<h2>Registration Form - Results</h2>
	<%
	   String name=request.getParameter("name");
	   String email=request.getParameter("email");
	   String age=request.getParameter("age");
	   String city=request.getParameter("city");
	   
		String url="jdbc:mysql://localhost:3306/employee";
		String username="root";
		String password="";
		
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,password);
		Statement stmt=con.createStatement();
		
		String query = "INSERT INTO entry (name,email,age,City) VALUES (?,?,?,?)";
		PreparedStatement pr=con.prepareStatement(query);
		
		pr.setString(1, name);
	    pr.setString(2, email);
	    pr.setString(3, age);
	    pr.setString(4, city);
	    
	    pr.executeUpdate();
	    
		ResultSet rs=pr.executeQuery("select * from entry");
		while(rs.next()){
			
			String Name = rs.getString("name");
            String Email = rs.getString("email");
            String Age = rs.getString("age");
            String City = rs.getString("City");
			
			if (Name != null && Email != null && Age != null && City != null) {
				out.println("<p>Name: " + Name + "</p>");
	            out.println("<p>Email: " + Email + "</p>");
	            out.println("<p>age: " + Age + "</p>");
	            out.println("<p>city: " + City + "</p>");
	            out.println("<hr>");
			}
			
			

            
         }
		
		
		con.close();
		}
		catch(Exception e){
		      out.print(e);
		  }
		
	%>
</body>
</html>