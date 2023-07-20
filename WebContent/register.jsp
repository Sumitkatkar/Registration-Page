<%@ page import="java.sql.*" %>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	
	// TODO: validate the user input
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "");
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO signup (username, password, email) VALUES ('" + username + "', '" + password + "', '" + email + "')";
		int rows = stmt.executeUpdate(sql);
		
		// TODO: redirect the user to a confirmation page
		
	} catch (Exception e) {
		out.println("Error: " + e.getMessage());
	}
%>
