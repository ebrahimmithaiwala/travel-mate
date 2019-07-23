<%@page import="java.util.*,com.travelmate.hibernate.*,java.sql.*, org.apache.commons.codec.binary.Base64"%>
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
      <!--TOP BAR CONTENT & NOTIFICATIONS->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right"></div>
              </div>
            <!--logo start-->
            <a href="AddInventory.jsp" class="logo"><img src="TravelMate_Logo.png" width="60" height="50"> <b>Travel Mate</b></a>
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
                      <a class="active" href="javascript:;" >
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
      
      <!-- MAIN CONTENT-->
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
          
          	<h3><i class="fa fa-angle-right"></i> Add Products</h3>
          	
         <form action="AddTravelInventoryAction.jsp" method="post" enctype="multipart/form-data">
         
         <%
   
   TravelHistory th=new TravelHistory();
   TravelInventory ti=new TravelInventory();
%>
         
                  <h4>Select Your Travel Name</h4>
                  
              <select name="TravelName" class="form-control">
              
              <%
               
                 
                try
                {
                	session.getAttribute("UserName");
                	 
                	String Query="Select DiSTINCT TravelName from travelhistory" +" "+ "where UserName ="+ "'" + UserName + "'";
                	Class.forName("com.mysql.jdbc.Driver").newInstance();
                	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/travelmate","root","root");
                	Statement stm=conn.createStatement();
                	ResultSet rs=stm.executeQuery(Query);
                	while(rs.next())
                	{
                		%>
                		  <option value="<%=rs.getString("TravelName")%>"> <%=rs.getString("TravelName")%> </option>
                	
            
                	 <%  
                	
                	}
                }
                
                catch(Exception e)
                {
                	e.printStackTrace();
                }
               
              
             %>
               
               </select>
              
                 
              <div class="row mt">
                  <div class="col-md-12">
                      <div class="content-panel">
                          <h4>Add New Products</h4>
                          <table class="table table-striped table-advance table-hover">
	   
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th>Product Category</th>
                                  <th>Product Pic</th>
                                  <th>Product Name</th>
                                  <th>Product Quantity</th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                  
                                  

                                  
                                <div class="form-group">
                                  <td><select name="ProductCategory" class="form-control">
                                  <option>-SELECT-</option>
					              <option>Clothing</option>
					              <option>Durables</option>
					              <option>Electronics</option>
					              <option>First Aid</option>
					              <option>Perishables</option>
					              <option>Misc</option>
                                  </select></td>
                                  
                                  <td><input type="file" name="ProductPic" class="form-control"></td>
                                  <td><input type="text" name="ProductName" class="form-control"></td>
                                  <td><input type="number" name="ProductQuantity" class="form-control"></td>
                                  
                
				<input type="hidden" name="UserName" value="<%=UserName%>">
              
                                  <td>
                                      <input type="submit" name="action" value="Add" class="btn btn-success btn-xs">
                                      <input type="reset" class="btn btn-primary btn-xs"> 
                                  </td>
                                      </div>
                                     
                                 
                              </tr>
                                  
                                  
                                  
                          </table>
                      </div><!-- /content-panel -->
                  </div><!-- /col-md-12 -->
              </div><!-- /row -->
              </form>
              
              <div class="row mt">
                  <div class="col-md-12">
                      <div class="content-panel">
                          <h4>Existing Products</h4>
                        
                          <table class="table table-striped table-advance table-hover">
<% 
session.getAttribute("UserName");
String TravelName=(String)session.getAttribute("TravelName");
List<TravelInventory> list=TravelInventoryWorker.getAllTravelInventoryByUserName(UserName,TravelName);

%>
<%=TravelName%>
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th>Product Category</th>
                                  <th>Product Pic</th>
                                  <th>Product Name</th>
                                  <th>Quantity</th>
                              </tr>
                              </thead>
                                
 <%

for(TravelInventory t:list)
{
	int Id=t.getId();
	
%>
                                                        
                              <tbody>
   
                                  <tr>
                                  <td><%= t.getProductCategory()%></td>
                                  <% String ProductPic = "data: image/jpg;base64,"+Base64.encodeBase64String(t.getProductPic());%>
                                  <td><img src="<%=ProductPic%>" width="50" height="50"></td>
                                  <td><%= t.getProductName()%></td>
                                  <td><%= t.getProductQuantity()%></td>
                                  <td>
                                      <a href="UDProducts.jsp?TravelName=<%=TravelName%>&UserName=<%=UserName%>">
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i> Update</button></a>
                                      <a href="UDProducts.jsp?TravelName=<%=TravelName%>&UserName=<%=UserName%>">
                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i> Delete</button></a>
                                  </td>
                              </tr>
                              </tbody>
                            
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
          <div class="te
          xt-center">
              2017 - Travel Mate
              <a href="#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="assets/js/jquery.ui.touch-punch.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>

    <script src="assets/js/common-scripts.js"></script>
<%} %>
  </body>
</html>
