<%@page import="com.travelmate.hibernate.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Forgot Password</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="assets/Content/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body oncontextmenu="return false">

<header class="black-bg">
<a href="ForgotPassword.jsp" class="logo"><img src="TravelMate_Logo.png" width="60" height="50"> <b>Travel Mate</b></a>
</header>

<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal">X</button>
    </div>
<form class="form-horizontal" method="POST" name="ForgetPass" action="ForgetPasswordAction.jsp">
<fieldset>
<br>
    <center><legend>Forgot Password</legend></center>

<div class="form-group">
  <label class="col-md-4 control-label"></label>  
  <div class="col-md-4">
  <input type="text" name="UserEmail" placeholder="Email" class="form-control" required="">
    
  </div>
</div>

<center>
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
    <input type="submit" name="action" value="Check" class="btn btn-primary">
        <input type="reset" value="Clear" class="btn btn-primary">
  </div>
    </div>
</center>
</fieldset>
    </form>

</body>
</html>
