<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
   <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />

</head>

<%

//String items1=request.getParameter("items");

int id1=Integer.parseInt(request.getParameter("id"));

System.out.println(id1);

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
	String s1="select id,qty,items,sales from itemslist where id='"+id1+"'";
	st=con.createStatement();
	rs=st.executeQuery(s1);
	while(rs.next())
	{
		id=rs.getInt(1);
		qty=rs.getString(2);
		items=rs.getString(3);
		sales=rs.getString(4);

		System.out.println(id + "  " + qty + "   " + items + "   "+ sales);
		
	%>

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

            <body class="body-Login-back">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
           <!--     <img src="assets/img/logo.png" alt=""/> --> 
                </div>
            <div class="col-md-6 col-md-offset-3">
             <h1>Product Edit...</h1>
                <div class="login-panel panel panel-primary">                  
                    <div class="panel-heading">
                        <h3 class="panel-title text-center">Edit Items:</h3>
                    </div>
                    
                    <div class="panel-body">
                        <form role="form" action="edititems.jsp" method="post" class="form-horizontal">
                    	
                    	<input type="hidden" name="id" value="<%=id%>"/>  
                           
                                <div class="form-group">
                                <label class="col-sm-4 control-label" for="userName"> QTY:</label>
                                <div class="col-sm-8">
                                   <input class="form-control" placeholder="QTY" name="qty" type="text" id="userName" value="<%=qty%>">
                                   </div>
                                </div>
                                <div class="form-group">
                               <label class="col-sm-4 control-label" for="pwd"> *Item ID, UPC, SIM, or IMEI:</label>
                               <div class="col-sm-8">
                                   <input class="form-control" placeholder="Items" name="item" type="text" id="pwd" value="<%=items%>">
                                   </div>
                                      </div>
                                
                                <div class="form-group">
                               <label class="col-sm-4 control-label" for="pwd"> Sales Rep:</label>
                               <div class="col-sm-8">
                                   <input class="form-control" placeholder="Sales Rep" name="sales" type="text" id="pwd" value="<%=sales%>">
                                   </div>
                                      </div>                                    
                             
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class= "btn btn-lg  btn-block" name="add" value="Edit Item">
                                 <%-- <td><a href="edititems.jsp?items=<%=items%>" >Edit..</a></td> --%>                  
                           
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
   
    </div>
   <%
	}
}
	catch(Exception e)
	{
		e.printStackTrace();		
	}
   %> 
    
    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>

</body>
</html>
