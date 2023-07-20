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

import com.mysql.cj.xdevapi.Statement;



@WebServlet("/registraion")
public class registraion extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		
		HttpSession session = req.getSession();
		
		
		   String name=req.getParameter("name");
		   String email=req.getParameter("email");
		   String age=req.getParameter("age");
		   String city=req.getParameter("city");
		   
			String url="jdbc:mysql://localhost:3306/employee";
			String username="root";
			String password="";
			
			try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			
			
			String query = "INSERT INTO entry (name,email,age,City) VALUES (?,?,?,?)";
			PreparedStatement pr=con.prepareStatement(query);
			
			pr.setString(1, name)	;
		    pr.setString(2, email);
		    pr.setString(3, age);
		    pr.setString(4, city);
		    
		    pr.executeUpdate();
		    con.close();
			}
			catch(Exception e){
				PrintWriter out = res.getWriter();
			      out.print(e);
			  }
		
		session.setAttribute("name", name);
		session.setAttribute("email", email);
		session.setAttribute("age", age);
		session.setAttribute("city", city);
			
		res.sendRedirect("form.jsp");
		
		
	}

}
