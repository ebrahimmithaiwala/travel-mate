<%@page import="java.util.*,com.travelmate.hibernate.*, org.apache.commons.codec.binary.Base64"%>
<%@page import="java.time.*" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Dashboard</title>

    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />

    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

  </head>
  
<%
String AdminUserName=(String)session.getAttribute("AdminUserName") ;
if(AdminUserName==null){
%>	
<script>
	window.alert("You are not logged in. Please log in ");
	window.location="AdminDashboard.jsp";
</script>
<%
}
else{
%>

<body oncontextmenu="return false">

  <section id="container" >
      <!-- TOP BAR CONTENT & NOTIFICATIONS-->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="UpdateUserProfile.jsp" class="logo"><img src="TravelMate_Logo.png" width="60" height="50"> <b>Travel Mate</b></a>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
            	<form action="AdminLogoutAction.jsp">
                    <li><button class="btn btn-danger" id="lg">Logout</li></button>
                    </form>
            	</ul>
            	
        </div>
        </header>
        
        <style>
        #lg {
        margin-top: 20%;
        } 
        </style>
        </header>
      <!--header end-->
      
      <!-- MAIN SIDEBAR MENU-->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
  <% 
             Admin a=AdminWorker.getAdminByAdminUserName(AdminUserName);
                  session.getAttribute("AdminUserName");
                 %> 
                 <br>
              	  <h5 class="centered">Welcome! <%=AdminUserName%> </h5>
              	  	
                  <li class="sub-menu">
                  
                      <a href="AdminDashboard.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                   
                   <li class="sub-menu">
                  
                      <a class="active" href="Users.jsp">
                          <i class=""></i>
                          <span>Users</span>
                      </a>
                  </li>
                  
                   <li class="sub-menu">
                  
                      <a href="UserTravelHistory.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Users Travel History</span>
                      </a>
                  </li>
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!--MAIN CONTENT-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
          
                    <br>
          
          <script>
          function goBack() {
          window.history.back();
          }
          </script>
          
          <button onclick="goBack()" class="btn btn-info btn-xs">Go Back</button>
          
          	<h3><i class="fa fa-angle-right"></i> Update User</h3>
   
          	<div class="row mt">
          		<div class="col-lg-12">
                  	  
                      <form method="post" class="form-horizontal" action="UserAction.jsp" enctype="multipart/form-data">
                      <fieldset>
                        
                        <%
String i=request.getParameter("Id");
int Id=Integer.parseInt(i);

User u=new User();
u=UserWorker.getUserById(Id);


%>

                             <p class="centered">
                          <%String UserProfilePic = "data: image/jpg;base64,"+Base64.encodeBase64String(u.getUserProfilePic());%>
                          <img src="<%=UserProfilePic %>" id="blah" alt="your image" class="img-circle" width="80" >
                                  
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Profile Pic</label>
                              <div class="col-sm-10">
   <input type="file" name="UserProfilePic" class="form-control" value="<%=u.getUserProfilePic()%>" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])">
                              </div>
                              
                          </div>
                          </p>
                             
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">First Name</label>
                              <div class="col-sm-10">
                                  <input type="text" name="FirstName" class="form-control" value="<%=u.getFirstName()%>">
                              </div>
                              
                          </div>  
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Last Name</label>
                              <div class="col-sm-10">
                                  <input type="text" name="LastName" class="form-control" value="<%=u.getLastName()%>">
                              </div>
                              
                          </div>    
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Email</label>
                              <div class="col-sm-10">
                                  <input type="text" name="UserEmail" class="form-control" value="<%=u.getUserEmail()%>">
                              </div>
                              
                          </div>         
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Contact Number</label>
                              <div class="col-sm-10">
                                  <input type="number" name="ContactNumber" class="form-control" value="<%=u.getContactNumber()%>">
                              </div>
                              
                          </div> 
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Username</label>
                              <div class="col-sm-10">
                                  <input type="text" name="UserName" class="form-control" value="<%=u.getUserName()%>">
                              </div>
                              
                          </div> 
                          
                         <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">User Password</label>
                              <div class="col-sm-10">
                                  <input type="text" name="UserPassword" class="form-control" value="<%=u.getUserPassword()%>">
                              </div> 
                              
                          </div>
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Security Question</label>
                              <div class="col-sm-10">
                                  <select name="SecurityQuestion" class="form-control">
                                  <option><%=u.getSecurityQuestion()%></option>
                                  <option>What is your fathers name</option>
                                  <option >What is your mothers name</option>
                                  </select>
                              </div>
                              
                          </div>
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Security Answer</label>
                              <div class="col-sm-10">
                                  <input type="SecurityAnswer" name="SecurityAnswer" class="form-control" value="<%=u.getSecurityAnswer()%>">
                              </div>
                              
                          </div>
                          
                          <div class="form-group">
  <label class="col-md-4 control-label">Gender</label>
  <div class="col-md-4"> 
    <label class="radio-inline">
      <input type="radio" value="Male" name="UserGender">
      Male
    </label> 
    <label class="radio-inline">
      <input type="radio" value="Female" name="UserGender">
      Female
    </label>
  </div>
</div> 
                            
                          <input type="hidden" name="Id" value="<%=u.getId()%>">

                          <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                        <input type="submit" name="action" value="Update User" class="btn btn-primary">
                        <input type="submit" name="action" value="Delete User" class="btn btn-danger">
                        <input type="reset" value="Clear" class="btn btn-warning">
                           </div>
                       </div>
                          </fieldset>
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section><!--/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2017 - Travel Mate
              <a href="form.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>

    <script src="assets/js/common-scripts.js"></script>

    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<script src="assets/js/bootstrap-switch.js"></script>
	
	<script src="assets/js/jquery.tagsinput.js"></script>

	<script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="assets/js/form-component.js"></script>    

<%} %>
  </body>
</html>
