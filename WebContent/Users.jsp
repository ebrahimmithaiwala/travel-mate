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

    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    
    <script src="src/jquery.quicksearch.js"></script>

  </head>

<%String AdminUserName=(String)session.getAttribute("AdminUserName") ;
if(AdminUserName==null){
%>	
<script>
	window.alert("You are not logged in. Please log in ");
	window.location="AdminLogin.jsp";
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
                  
                      <a class="" href="UsersTravelHistory.jsp">
                          <i class=""></i>
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
          
          	<h3><i class="fa fa-angle-right"></i> Registered Users</h3>

<%
List<User> list=UserWorker.getAllUser();

%>

              <div class="row mt">
                  <div class="col-md-12">
               
               	<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
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
    td = tr[i].getElementsByTagName("td")[1];
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
               
                      <div class="content-panel">
                          <table id="myTable" class="table table-striped table-advance table-hover">
                                                   
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  
                                  <th>ID</th>
                                  <th>First Name</th>
                                  <th>User Name</th>
                                  <th>Contact No</th>
                                  <th></th>
                              </tr>
                              </thead> 
                              
                              <%
for(User u:list)
{
int Id=u.getId();
%>
                              
                              <tbody>
                                  <tr>
                                  <td><%= u.getId()%></td>
                                  <td><%= u.getFirstName()%></td>
                                  <td><%= u.getUserName()%></td>
                                  <td><%= u.getContactNumber()%></td>
                                  <td>
                                      <a href="ViewUser.jsp?Id=<%= Id%>">
                                      <button class="btn btn-success btn-xs"><i class="fa fa-check"></i> View</button></a>
                                      <a href="UpdateUser.jsp?Id=<%= Id%>">
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i> Update</button></a>
                                      
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
