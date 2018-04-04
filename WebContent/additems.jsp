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
	
            <body class="body-Login-back">
    <div class="container">
        <div class="row">
       
            <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
           <!--     <img src="assets/img/logo.png" alt=""/> --> 
                </div>
            <div class="col-md-6 col-md-offset-3">
             <h1>Product Insert...</h1>
                <div class="login-panel panel panel-primary">                  
                    <div class="panel-heading">
                        <h3 class="panel-title text-center">Product Inventory:</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="itemsInsert" method="post" class="form-horizontal">
                           
                                <div class="form-group">
                                <label class="col-sm-4 control-label" for="userName"> QTY:</label>
                                <div class="col-sm-8">
                                   <input class="form-control" placeholder="QTY" name="qty" type="text" id="userName" required>
                                   </div>
                                </div>
                                <div class="form-group">
                               <label class="col-sm-4 control-label" for="pwd"> *Item ID, UPC, SIM, or IMEI:</label>
                               <div class="col-sm-8">
                                   <input class="form-control" placeholder="Items" name="item" type="text" id="pwd" required>
                                   </div>
                                      </div>
                                
                                <div class="form-group">
                               <label class="col-sm-4 control-label" for="pwd"> Sales Rep:</label>
                               <div class="col-sm-8">
                                   <input class="form-control" placeholder="Sales Rep" name="sales" type="text" id="pwd" required>
                                   </div>
                                      </div>                                    
                             
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class= "btn btn-lg  btn-block" name="add" value="Quickadd">                  
                           
                        </form>
                    </div>
                </div>
            </div>

        </div>
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
