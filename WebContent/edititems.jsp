<!DOCTYPE html>
<html>
<%@ page import="java.sql.*,com.gm.controllers.*" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory System</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/main-style.css" rel="stylesheet" />
     <!-- Page Level CSS -->
    <link href="assets/plugins/timeline/timeline.css" rel="stylesheet" />
</head>   
<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
           <%@include file="hedder.jsp"%>
            <!-- end navbar-header -->
        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <%@include file="sidemenu.jsp"%>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
        <!-- end navbar side -->
        <!--  page-wrapper -->
        <div id="page-wrapper">


            
  <%           
   		
  String itemrequest=request.getParameter("item");
  
  		int id=Integer.parseInt(request.getParameter("id"));
  		
  		String qty=request.getParameter("qty");
  		
  		System.out.println(itemrequest + "   " + qty + "     " + id);
  	  
		String item=request.getParameter("item");
		String sales=request.getParameter("sales");
		
		Connection con=null;
		
		try
		{
			con=Databasecon.getconnection();
			PreparedStatement ps=con.prepareStatement("update itemslist set qty='"+qty+"',items='"+item+"',sales='"+sales+"' where id='"+id+"'");
			
/* 			ps.setString(1, qty);
			ps.setString(2, item);
			ps.setString(3, sales); 
			ps.setString(4, itemrequest); */
			
			int result=ps.executeUpdate();
			
			if(result > 0)
				response.sendRedirect("sucessedit.jsp");
			else
				response.sendRedirect("Failed");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		} 
    %>
    </body>
    </div>
    </div>
 
    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>

</body>

</html>
