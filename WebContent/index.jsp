<%@page import="com.travelmate.hibernate.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Your Travel Management</title>

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
	
</head>
<body>
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
			       <a href="index.jsp"><h1 style="position:relative;">Travel Mate</h1></a>
				   </div>
					<!--//logo-->
					<nav class="navbar navbar-default cl-effect-16" id="cl-effect-16">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
							<span class="sr-only"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div id="navbar" class="navbar-collapse navbar-right collapse hover-effect">
							<ul class="nav navbar-nav">
								<li><a class="scroll" href="#home">HOME</a></li>
								<li><a href="#about" class="scroll">ABOUT</a></li>
								<li><a href="#team" class="scroll">TEAM</a></li>
								
							</ul>	
						</div>
						</nav>
                   
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
                  
<form name="Login" method="post" action="UserLoginAction.jsp">
    <h1>LOGIN</h1><br>
    <img src="download.jpg" class="img-circle" width="50">
    
  <label for=""></label>
  <input type="text" name="UserName" id="" placeholder="email" class="email">
    
  <label for=""></label>
  <input type="password" name="UserPassword" id="" placeholder="password" class="pass">
    
  <button type="submit" name="action" value="Login">login</button>
    
    <p id="p">Forgot your password? <b><a href="#">Click here</a></b></p>
    <p id="p">New user? <b><a href="popup.jsp">Create new account</a></b></p>
    
    <div class="modal fade text-center" id="theModal">
  <div class="modal-dialog">
    <div class="modal-content">
    </div>
  </div>
</div>

</form>

			 </div>
            </div>
            </div>
	     </div>	
    <!-- About-->
	<div class="about-w3" id="about">
		<div class="container">
			<div class="col-md-6 about-left-w3l">
				<h2>About</h2>
				<br>
				<br><h4>Mostly all of us love to travel. Though it be hobby, passion or need we all travel at some or the other point of time.</h4>
				<br><h4>While travelling one of the most important thing that accompanies us is our inventory or the stuff we carry around.</h4>
			    <br><h4>Now being humans we all have a common trait of 'Forgetting'. In today's generation be it people of any age, we tend to forget quite easily.</h4>
			</div>
			<div class="col-md-6 about-right-w3l">
			</div></div>
			<div class="clearfix"></div>
		</div>
	</div>

	<!--team-->
	<div class="team wthree" id="team">
		<div class="container">
			<div class="team-main">
				<div class="team-top">
					<h3>Our Team</h3>
				</div>
				<div class="team-bottom">
					<!--<div class="col-md-4 team-grids tg1">
						<div class="ih-item circle effect5">
							
								<div class="img"><img src="images/t1.jpg" alt="img" class="img-responsive"></div>
								<div class="info">
								  <div class="info-back">
									<h3></h3>		          
								  </div>			          
								</div>
							
						</div>
					</div>-->
					<div class="col-md-4 team-grids tg2">
						<div class="ih-item circle effect5">
							
								<div class="img"><img src="Image6.jpg" alt="img" class="img-responsive"></div>
								<div class="info">
								  <div class="info-back">
									<h3>DEVELOPER</h3>		           	            
								  </div>
								</div>
							
						</div> 
					</div>
					<!--<div class="col-md-4 team-grids tg3">
						<div class="ih-item circle effect5">
						
							
								<div class="img"><img src="Image6.jpg" alt="img" class="img-responsive"></div>
								<div class="info">
								   <div class="info-back">
										<h3></h3>			       
								    </div>
								</div>
							
						</div>
						
					</div>-->
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--//team-->
	
	<!--contact-->

	<!--//contact-->

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
				<div class="col-md-4 ftr-grid ftr-mid">
					 <h4></h4>
					 <span class="ftr-line flm"> </span>
					   <ul><!--
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						</ul>-->
				</div>

	<!--//footer-->
	
	<div class="copy-agileinfo">
		<div class="container">
			<p>&copy; 2017 Travel Mate. All Rights Reserved | </p>
		</div>
	</div>
</body>
</html>