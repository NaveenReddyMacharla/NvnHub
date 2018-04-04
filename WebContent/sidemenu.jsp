<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory System</title>
</head>
<body>
<style>
#side-menu{position:fixed;left:0;top:55px;}
.form-main{display:flex;background:white;border: 2px solid #04b173;}
.navbar{    padding-bottom: 10px;    min-height: 72px;}
.alert-container{    position: fixed;
   position: fixed;
    display: block;
    width: 50%;
    left: 445px;
    top: 255px;}
.alert-container .alert{
display: flex;
  justify-content: center;
  flex-direction: column;
  text-align: center;
}
</style>
 <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">
                            <div class="user-section-inner">
                                <img src="assets/img/user.jpg" alt="">
                            </div>
                            <div class="user-info">
                                <div>
                                <%
                                	String username=(String)session.getAttribute("username");
                               		 out.print(username);
                                %>
                                
                                </div>
                                <div class="user-text-online">
                                    <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                                </div>
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>
                     <li>
                        <a href="additems.jsp"><i class="fa fa-flask fa-fw"></i>Items Insert:</a>
                    </li>
                    <li>
                        <a href="itemsOPerations.jsp"><i class="fa fa-edit fa-fw"></i>Added Items:</a>
                    </li>
                    
                    <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                        </li>
             </ul>
                <!-- end side-menu -->
</body>
</html>