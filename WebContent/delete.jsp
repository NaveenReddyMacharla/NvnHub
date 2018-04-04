<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<body>
<% 

Connection con=null;
Statement st=null;
ResultSet rs=null;

int id=Integer.parseInt(request.getParameter("id"));

String email="";
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/invertory", "root", "root");
		String sql="delete from itemslist where id='"+id+"'";
		st=con.createStatement();
		
		int result=st.executeUpdate(sql);
		
		if(result > 0)
			response.sendRedirect("sucess.jsp");
			
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>
</body>
</html>