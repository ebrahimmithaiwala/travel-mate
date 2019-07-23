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

    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

  </head>

<%String UserName=(String)session.getAttribute("UserName") ;
if(UserName==null){
%>	
<script>
	window.alert("You are not logged in. Please log in ");
	window.location="index.jsp";
</script><%
}
else{
%>

<body oncontextmenu="return false">

  <section id="container" >
      <!--TOP BAR CONTENT-->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right"></div>
              </div>
            <!--logo start-->
            <a href="TravelHistory.jsp" class="logo"><img src="TravelMate_Logo.png" width="60" height="50"> <b>Travel Mate</b></a>
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
                  
                      <a href="dashboard.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                   
                  <li class="sub-menu">
                      <a class="active" href="javascript:;" >
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
          
          	<h3><i class="fa fa-angle-right"></i> Travel History</h3>
          	
          	<%

session.getAttribute("UserName");
List<TravelHistory> list=TravelHistoryWorker.getAllTravelHistoryByUserName(UserName);

%>

   <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for travel names.." title="Type in a name">
    <style>           	
#myInput {

  width: 100%;
  font-size: 14px;
  padding: 6px 20px 5px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
</style>

<script>
function myFunction() {
  var input, tbody, table, tr, td, i;
  input = document.getElementById("myInput");
  tbody = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(tbody) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>

              <div class="row mt">
                  <div class="col-md-12">
                      <div class="content-panel">
                
                          <table id="myTable" class="table table-striped table-advance table-hover">
                                                   
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  
                                  <th>Travel Name</th>
                                  <th>Travel Location</th>
                                  <th>Start Date</th>
                                  <th>End Date</th>
                                  <th>Travel Status</th>
                                  <th></th>
                              </tr>
                              </thead> 
                              <tbody>
                                  <tr>
<%
for(TravelHistory th:list)
{
String TravelName=th.getTravelName();

%>

                                  
                                  <td><%= th.getTravelName()%></td>
                                  <td class="hidden-phone"><%= th.getTravelLocation()%></td>
                                  <td><%= th.getTravelStartDate()%></td>
                                  <td><%= th.getTravelEndDate()%></td>
                                  <td id="status"><span class="label label-success">REGISTERED</span></td>
                                  <td>
                                      <a href="ViewHistory.jsp?TravelName=<%=TravelName%>&UserName=<%=UserName%>">
                                      <button class="btn btn-success btn-xs"><i class="fa fa-check"></i> View</button></a>
                                      
                                      <a href="UpdateHistory.jsp?TravelName=<%=TravelName%>&UserName=<%=UserName%>">
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i> Update</button></a>
                                      
                                     <a href="UpdateHistory.jsp?TravelName=<%=TravelName%>&UserName=<%=UserName%>">
                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i> Delete</button></a>
                                     
                                  </td>
                          
                              </tr>
                                  <%} %>
                          </table>
                      </div><!-- /content-panel -->
                  </div><!-- /col-md-12 -->
              </div><!-- /row -->

		</section><!--/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2017 - Travel Mate
              <a href="##" class="go-top">
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
<%} %>
  </body>
</html>
