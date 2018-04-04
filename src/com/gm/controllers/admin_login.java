package com.gm.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/admin_login")
public class admin_login extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    public admin_login() 
    {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out=response.getWriter();
		
		String ausername=request.getParameter("uname");
		String apassword=request.getParameter("pass");		
		Connection con=null;
	
		try
		{
			con=Databasecon.getconnection();
			PreparedStatement ps=con.prepareStatement("select * from  login where username='"+ausername+"' && password='"+apassword+"'");
			ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					//create a HttpSession Object
					HttpSession session=request.getSession();
					session.setAttribute("username", ausername);
					
					response.sendRedirect("index.jsp");
				}
				else
				{
					response.sendRedirect("error.jsp");
				}
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
