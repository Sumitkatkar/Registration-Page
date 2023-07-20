package com.sumit;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String user =  request.getParameter("uname");
		String pass =  request.getParameter("pass");
		
		if(user.equals("sumit") && pass.equals("1419"))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", user);
			
			response.sendRedirect("second.jsp");
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	}
}
