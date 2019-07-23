<%@page import="com.travelmate.hibernate.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Login</title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- css -->
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="assets/css/swipebox.css">
<link rel="stylesheet" href="assets/css/style1.css" type="text/css" media="all" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css" media="all" />
<!--// css -->
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/js/bootstrap.js"></script>
	<!-- start-smooth-scrolling -->
			
</head>
<body oncontextmenu="return false">
	<div class="top-header-agile">
		<div class="container">
            
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="banner" id="home">
	
		<div class="header-bottom">
		     <div class="container">
			  <div class="fixed-header">
			      <!--logo-->
			       <div class="logo">
			       <img src="TravelMate_Logo.png" class="img-responsive" width="80" height="60" style="float:left;"> 
			       <a href="AdminLogin.jsp"><h1 style="position:relative;">Travel Mate</h1></a>
				   </div>
					<!--//logo-->
				   
				 <div class="clearfix"></div>
                  <style>
form {
  position: relative;
  width: 300px;
  margin: 0 auto;
  background: rgba(130,130,130,.3);
  padding: 20px 22px;
  border: 1px solid;
  border-top-color: rgba(255,255,255,.4);
  border-left-color: rgba(255,255,255,.4);
  border-bottom-color: rgba(60,60,60,.4);
  border-right-color: rgba(60,60,60,.4);
margin-top: 6%;
}

form input, form button {
  width: 250px;
  border: 1px solid;
  border-bottom-color: rgba(255,255,255,.5);
  border-right-color: rgba(60,60,60,.35);
  border-top-color: rgba(60,60,60,.35);
  border-left-color: rgba(80,80,80,.45);
  background-color: rgba(0,0,0,.2);
  background-repeat: no-repeat;
  padding: 8px 24px 8px 10px;
  font: bold .875em/1.25em "Open Sans Condensed", sans-serif;
  letter-spacing: .075em;
  color: #fff;
  text-shadow: 0 1px 0 rgba(0,0,0,.1);
  margin-bottom: 19px;
}

form input:focus { background-color: rgba(0,0,0,.4); }

form input.email {
  background-position: 220px 10px;
}

form input.pass {
  background-position: 223px 8px
}

::-webkit-input-placeholder { color: #ccc; text-transform: uppercase; }
::-moz-placeholder { color: #ccc; text-transform: uppercase; }
:-ms-input-placeholder { color: #ccc; text-transform: uppercase; }

form button[type=submit] {
  width: 150px;
  margin-bottom: 0;
  color: #3f898a;
  letter-spacing: .05em;
  text-shadow: 0 1px 0 #133d3e;
  text-transform: uppercase;
  background: #225556;
  border-top-color: #9fb5b5;
  border-left-color: #608586;
  border-bottom-color: #1b4849;
  border-right-color: #1e4d4e;
  cursor: pointer;
        }
                      
                      img{
                          width:100px;
                          height:100px;
                          margin-bottom: 10%;
                      }
                      #p{
                          margin-top: 1%;
                          color: white;
                      }
    
</style>
                  
<form name="Login" method="post" action="AdminLoginAction.jsp">
    <h1>ADMIN LOGIN</h1><br>
    <img src="download.jpg" class="img-circle" width="50">
    
  <label for=""></label>
  <input type="text" name="AdminUserName" id="" placeholder="Admin Username" class="email">
    
  <label for=""></label>
  <input type="password" name="AdminPassword" id="" placeholder="Password" class="pass">
    
  <button type="submit" name="action" value="Login">Login</button>
   
</form>

			 </div>
            </div>
            </div>
	     </div>	
	</div>

	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<div class="col-md-4 ftr-grid">
					<h4></h4>
					<span class="ftr-line"> </span>
					<p></p>
					<p></p>
				</div>
	<!--//footer-->
	
	<div class="copy-agileinfo">
		<div class="container">
			<p>&copy; 2017 Travel Mate. All Rights Reserved | </p>
		</div>
	</div>
</body>
</html>