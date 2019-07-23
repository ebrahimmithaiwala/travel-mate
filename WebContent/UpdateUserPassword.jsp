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
   
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body oncontextmenu="return false">

<header class="black-bg">
<a href="ForgotPassword.jsp" class="logo"><img src="TravelMate_Logo.png" width="60" height="50"> <b>Travel Mate</b></a>
</header>

<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal">X</button>
    </div>
    
  <style>
  #lbl {
 margin-left: 2%;
  }
  
  </style>
    
<form class="form-horizontal" class="form-control" method="POST" >
<fieldset>
<br>
    <center><legend>Forgot Password</legend></center>
    
    <div id="lbl" class="form-group">
  <label class="col-md-1 control-label">Profile Pic</label>  
  <div class="col-md-4">
  <input type="file" name="UserProfilePic" class="form-control" required="" capture="camera">
    
  </div>
</div>

<div id="lbl" class="form-group">
  <label class="col-md-1 control-label">First Name</label>  
  <div class="col-md-4">
  <input type="text" name="FirstName" placeholder="" readonly class="form-control" required="">
    
  </div>
</div>

<div id="lbl" class="form-group">
  <label class="col-md-1 control-label">Last Name</label>  
  <div class="col-md-4">
  <input type="text" name="LastName" placeholder="" readonly class="form-control" required="">
    
  </div>
</div>

<div id="lbl" class="form-group">
  <label class="col-md-1 control-label">Email</label>  
  <div class="col-md-4">
  <input type="text" name="UserEmail" placeholder="" readonly class="form-control" required="">
    
  </div>
</div>

<div id="lbl" class="form-group">
  <label class="col-md-1 control-label">Contact Number</label>  
  <div class="col-md-4">
  <input type="text" name="ContactNumber" placeholder="" readonly class="form-control" required="">
    
  </div>
</div>

<div id="lbl" class="form-group">
  <label class="col-md-1 control-label">Username</label>  
  <div class="col-md-4">
  <input type="text" name="UserName" placeholder="" class="form-control" required="">
    
  </div>
</div>

<div id="lbl" class="form-group">
  <label class="col-md-1 control-label">Password</label>  
  <div class="col-md-4">
  <input type="text" name="UserPassword" placeholder="" class="form-control" required="">
    
  </div>
</div>

<div id="lbl" class="form-group">
  <label class="col-md-1 control-label">Gender</label>
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

<div id="lbl" class="form-group">
  <label class="col-md-1 control-label">Security Question</label>
  <div class="col-md-4">
    
     <select name="SecurityQuestion" class="form-control" readonly>
                                  <option>-SELECT-</option>
                                  <option>What is your fathers name</option>
                                  <option >What is your mothers name</option>
                                  </select>
  </div>
</div>

<div id="lbl" class="form-group">
  <label class="col-md-1 control-label">Answer</label>  
  <div class="col-md-4">
  <input type="text" name="SecurityAnswer" placeholder="Answer" class="form-control" readonly required="">
    
  </div>
</div>

<div id="lbl" class="form-group">
  <label class="col-md-1 control-label"></label>
  <div class="col-md-4">
    <input type="submit" name="action" value="Check" class="btn btn-primary">
        <input type="reset" value="Clear" class="btn btn-primary">
  </div>
    </div>

</fieldset>
    </form>

</body>
</html>
