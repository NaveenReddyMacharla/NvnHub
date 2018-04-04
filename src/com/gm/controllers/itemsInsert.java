package com.gm.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/itemsInsert")
public class itemsInsert extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		int qty=Integer.parseInt(request.getParameter("qty"));
		String item=request.getParameter("item");
		String sales=request.getParameter("sales");
		
		Connection con=null;
		
		try
		{
			con=Databasecon.getconnection();
			PreparedStatement ps=con.prepareStatement("insert into itemslist(qty,items,sales)values(?,?,?)");
			ps.setInt(1, qty);
			ps.setString(2, item);
			ps.setString(3, sales);
			
			int result=ps.executeUpdate();
			
			if(result > 0)
				response.sendRedirect("sucess1.jsp");
			else
				response.sendRedirect("Failed");
				
			
					
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

	}

}
