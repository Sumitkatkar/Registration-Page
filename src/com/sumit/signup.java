package com.sumit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/signup")
public class signup extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		
		HttpSession session = req.getSession(); 
		
		
		String user = req.getParameter("username");
		String pass = req.getParameter("password");
		String email = req.getParameter("email");
		
		String url="jdbc:mysql://localhost:3306/employee";
		String username="root";
		String password="";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			
			String query = "INSERT INTO signup (user,pass,email) VALUES (?,?,?)";
			PreparedStatement pr=con.prepareStatement(query);
			
			pr.setString(1, user );
		    pr.setString(2, pass);
		    pr.setString(3, email);
		    
		    pr.executeUpdate();
		    con.close();
			
		}
		catch(Exception e){
			 PrintWriter out = res.getWriter();
		      out.print(e);
		}
		
		session.setAttribute("user", user);
		session.setAttribute("pass", pass);
		
		
		res.sendRedirect("index.jsp");
	}
}
