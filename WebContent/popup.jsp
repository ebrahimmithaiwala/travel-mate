<%@page import="com.travelmate.hibernate.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>SIGNUP</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="assets/Content/bootstrap.css" rel="stylesheet" />
</head>
<body oncontextmenu="return false">

<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal">X</button>
    </div>
<form class="form-horizontal" method="POST" action="AddUserAction.jsp" enctype="multipart/form-data">
<fieldset>

    <center><legend>SIGN UP</legend></center>

<div class="form-group">
  <label class="col-md-4 control-label">First name</label>  
  <div class="col-md-4">
  <input type="text" name="FirstName" placeholder="First Name" class="form-control" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Last name</label>  
  <div class="col-md-4">
  <input type="text" name="LastName" placeholder="Last Name" class="form-control" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Email</label>  
  <div class="col-md-4">
  <input type="text" name="UserEmail" placeholder="Email" class="form-control" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Phone Number</label>  
  <div class="col-md-4">
  <input type="number" name="ContactNumber" placeholder="Contact Number" class="form-control" required="">
    
  </div>
</div>
    
    <div class="form-group">
  <label class="col-md-4 control-label">User Name</label>  
  <div class="col-md-4">
  <input type="text" name="UserName" placeholder="Username" class="form-control" required="">
  </div>
</div>
    
    <div class="form-group">
  <label class="col-md-4 control-label">Password</label>  
  <div class="col-md-4">
  <input type="password" name="UserPassword" placeholder="Password" class="form-control" required="">
    
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

<div class="form-group">
  <label class="col-md-4 control-label">Security Question</label>
  <div class="col-md-4">
    
     <select name="SecurityQuestion" class="form-control">
                                  <option>-SELECT-</option>
                                  <option>What is your fathers name</option>
                                  <option >What is your mothers name</option>
                                  </select>
  </div>
</div>
    
<div class="form-group">
  <label class="col-md-4 control-label">Answer</label>  
  <div class="col-md-4">
  <input type="text" name="SecurityAnswer" placeholder="Answer" class="form-control" required="">
    
  </div>
</div>
    
    <div class="form-group">
  <label class="col-md-4 control-label">Profile Pic</label>  
  <div class="col-md-4">
  <input type="file" name="UserProfilePic" class="form-control" required="" capture="camera">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
    <input type="submit" value="Signup" class="btn btn-primary">
        <input type="reset" value="Clear" class="btn btn-primary">
  </div>
    </div>

</fieldset>
    </form>

</body>
</html>
