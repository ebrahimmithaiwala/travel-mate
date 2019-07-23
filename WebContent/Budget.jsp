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

<body>

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

                  
              	  <p class="centered"><a href="#"><img src="" class="img-circle" width="60"></a></p>
              	  <h5 class="centered"></h5>
              	  	
                  <li class="mt">
                  
                      <a href="dashboard.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                   
                  <li class="sub-menu">
                      <a class="" href="javascript:;" >
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
          
          	<h2><i class="fa fa-angle-right"></i> Budget Invoice</h2>

              
              <div class="row mt">
                  <div class="col-md-12">
                      <div class="content-panel">
                
                <h4 align="center"><i class="fa fa-angle-center"></i> Budget Invoice No. 1</h4>
                
                <div class="row">
                <div class="col-xs-6">
    				<address style="padding:10px;">
    				1. GSTIN<br>
    					2. Name<br>
    					3. Address<br>
    					4. Serial No. of Invoice<br>
    					5. Date of Invoice<br>
    				</address>
    			</div>
    			</div>
    			
    			<div class="row">
    			<div class="col-xs-6">
    				<address style="padding:10px;">
    				    <strong>Details of Receiver (Billed to)</strong><br>
    					
    					 Name<br>
    					 Address<br>
    					 State<br>
    					 State Code<br>
    					 GSTIN/Unique ID
    				</address>
    			</div>
    			
    			<div class="col-xs-6 text-right">
    				<address style="padding:10px;">
        			<strong>Details of Consignee (Shipped To)</strong><br>
    					 Name<br>
    					 Address<br>
    					 State<br>
    					 State Code<br>
    					 GSTIN/Unique ID
    				</address>
    			</div>
    			</div>
                
                          <table border="1" id="myTable" class="table table-advance table-hover">
                                                   
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  
                                  <th align="center" rowspan=2>S.r No.</th>
                                  <th align="center" rowspan=2>Description of goods</th>
                                  <th align="center" rowspan=2>HSN Code</th>
                                  <th align="center" rowspan=2>Qty</th>
                                  <th align="center" rowspan=2>Unit</th>
                                  <th align="center" rowspan=2>Rate (per pc)</th>
                                  <th align="center" rowspan=2>Total</th>
                                  <th align="center" rowspan=2>Discount</th>
                                  <th align="center" rowspan=2>Taxable value</th>
                                  <th align="center" colspan=2>CGST</th>
                                  <th align="center" colspan=2>SGST</th>
                                  <th align="center" colspan=2>IGST</th>
                                  </tr>
                                  
                                  <tr>
                                  <th align="center" >Rate</th>
                                  <th align="center" >Amt</th>
                                  
                                  <th align="center" >Rate</th>
                                  <th align="center" >Amt</th>
                                  
                                  <th align="center" >Rate</th>
                                  <th align="center" >Amt</th>
                                  </tr>
                              </thead>
                              
                              <tbody>
                              <tr>
                              
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              <td>xyz</td>
                              
                              </tr>
                              
                              </tbody>
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
  </body>
</html>
