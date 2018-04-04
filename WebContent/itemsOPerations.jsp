<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
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
            <div class="row">
                 <!-- page header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Items Operations:</h1>
                </div>
                <!--end page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Content -->
                    <table class="table table-bordered table-condensed table-hover">
<tbody><tr class="bg-primary">
	<th>S.No</th>
	<th class="text-center">qty</th>
	<th>Items</th>
	<th>sales</th>
	<th>EditItem</th>		
	<th>Delete</th>

<%

int id=0;
String qty=null;
String items=null;
String sales=null;


Connection con=null;
Statement st=null;
ResultSet rs=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/invertory", "root","root");
	String s1="select id,qty,items,sales from itemslist";
	st=con.createStatement();
	rs=st.executeQuery(s1);
	while(rs.next())
	{
		id=rs.getInt(1);
		qty=rs.getString(2); 
		items=rs.getString(3);
		sales=rs.getString(4);
	
	%>
		<tr bgcolor="#FFFFFF"> 
              <td>
                <%=id%>
               </td>
            	
              <td class="text-center">
                <%=qty%>
               </td>
              <td>
                <%=items%>
               </td>
              <td>
                <%=sales%>
               </td>
                 <td><a href="edit.jsp?id=<%=id%>" >Edit..</a></td>    
                 <td><a href="delete.jsp?id=<%=id%>" class="btn btn-sm btn-warning">Delete..</a></td>             
<% 	
	}
	
}
catch(Exception e)
{
	e.printStackTrace();
}

%>

</tr>
</tbody></table>
                      <!-- End Form content -->
                </div>
            </div>
        </div>
        <!-- end page-wrapper -->

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
