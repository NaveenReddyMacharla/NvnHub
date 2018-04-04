package com.gm.controllers;

import java.sql.Connection;
import java.sql.DriverManager;

public class Databasecon
{
	public static Connection con;
	public static Connection getconnection()
	{	
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/invertory","root","root");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("class error");
		}
		return con;
	
	}
}
