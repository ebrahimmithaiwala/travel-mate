<%@page import="java.util.*,com.travelmate.hibernate.*, org.apache.commons.codec.binary.Base64"%>
<%@page import="java.time.*" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Your Travel Management</title>

    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />

    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

  </head>
  
<%
String UserName=(String)session.getAttribute("UserName") ;
if(UserName==null){
%>	
<script>
	window.alert("You are not logged in. Please log in ");
	window.location="index.jsp";
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
            <a href="UserProfile.jsp" class="logo"><img src="TravelMate_Logo.png" width="60" height="50"> <b>Travel Mate</b></a>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
            	<form action="LogoutAction.jsp">
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
      <!--header end-->
      
      <!-- MAIN SIDEBAR MENU-->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
<%
session.getAttribute("UserName");
User u=UserWorker.getUserPicByUserName(UserName);

%>
                  <% String UserProfilePic = "data: image/jpg;base64,"+Base64.encodeBase64String(u.getUserProfilePic());%>
              	  <p class="centered"><a href="UserProfile.jsp?UserName=<%=UserName%>"><img src="<%=UserProfilePic%>" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Welcome! <%=u.getFirstName()%> </h5>
              	  	
                  <li class="mt">
                  
                      <a class="active" href="dashboard.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                   
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=""></i>
                          <span>Travel History</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="AddTravel.jsp">Add New Travel</a></li>
                          <li><a  href="TravelHistory.jsp">Travel History</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=""></i>
                          <span>Product Details</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="AddInventory.jsp">Add New Product</a></li>
                          <li><a  href="ProductDetails.jsp">Existing Products</a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                  
                      <a href="BagPackDropDown.jsp">
                          <i class=""></i>
                          <span>BagPack</span>
                      </a>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=""></i>
                          <span>E-Album</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="AddGallery.jsp">Add Memories</a></li>
                          <li><a  href="GalleryDrop.jsp">Gallery</a></li>
                      </ul>
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
          
          	<h3><i class="fa fa-angle-right"></i> User Profile</h3>
   
          	<div class="row mt">
          		<div class="col-lg-12">
                  	  
                      
                      <fieldset>
                      <% UserProfilePic = "data: image/jpg;base64,"+Base64.encodeBase64String(u.getUserProfilePic());%>
              	  <p class="centered"><img src="<%=UserProfilePic%>" class="img-circle" width="70"></p><br>
                  
                  <div class="form-group">
                              <div class="col-sm-10">
                                  <input type="hidden" name="UserID" value="<%=u.getUserName()%>">
                              </div>
                          </div>
                          
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">First Name</label>
                              <div class="col-sm-10">
                                  <p class="form-control-static"><%=u.getFirstName()%></p>
                              </div>
                              
                          </div>  
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Last Name</label>
                              <div class="col-sm-10">
                                  <p class="form-control-static"><%=u.getLastName()%></p>
                              </div>
                              
                          </div>    
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Email</label>
                              <div class="col-sm-10">
                                  <p class="form-control-static"><%=u.getUserEmail()%></p>
                              </div>
                              
                          </div>         
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Contact Number</label>
                              <div class="col-sm-10">
                                  <p class="form-control-static"><%=u.getContactNumber()%></p>
                              </div>
                              
                          </div> 
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Username</label>
                              <div class="col-sm-10">
                                  <p class="form-control-static"><%=u.getUserName()%></p>
                              </div>
                              
                          </div> 
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Gender</label>
                              <div class="col-sm-10">
                                  <p class="form-control-static"><%=u.getUserGender()%></p>
                              </div>
                              
                          </div> 
                            
                          <input type="hidden" name="Id">

<script>
function limitDate2(){
 var d1 = document.getElementById("startDate").value;
 document.getElementById("endDate").setAttribute("min",d1);
 }
</script>

                        <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                        <a href="UpdateUserProfile.jsp?UserName=<%=UserName%>">
                        <button class="btn btn-primary">Update Profile</button></a>
                           </div>
                       </div>
                          </fieldset>
                      
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
