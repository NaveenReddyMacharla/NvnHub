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

<body class="body-Login-back">

    <div class="container">
       
        <div class="row">
            <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
           <!--     <img src="assets/img/logo.png" alt=""/> --> 
                </div>
            <div class="col-md-6 col-md-offset-3">
                <div class="login-panel panel panel-primary">                  
                    <div class="panel-heading">
                        <h3 class="panel-title text-center">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="admin_login" method="post" class="form-horizontal">
                           
                                <div class="form-group">
                                <label class="col-sm-4 control-label" for="userName"> User Name:</label>
                                <div class="col-sm-8">
                                   <input class="form-control" placeholder="User Name" name="uname" type="text" id="userName" required>
                                   </div>
                                </div>
                                <div class="form-group">
                               <label class="col-sm-4 control-label" for="pwd"> Password:</label>
                               <div class="col-sm-8">
                                   <input class="form-control" placeholder="Password" name="pass" type="password" id="pwd" required>
                                   </div>
                                  </div>                                     
                             
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class= "btn btn-lg  btn-block" name="login" value="Login">                  
                           
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>

     <!-- Core Scripts - Include with every page -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
</body>
</html>
