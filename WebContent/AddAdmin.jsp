<%@page import="java.util.*,com.travelmate.hibernate.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align=center><font face="comic sans ms">Add Admin</font></h1>
<center> 
<form method="POST" action="AddAdminAction.jsp">

Name: <input type="text" name="AdminName"><br> 

Email Id: <input type="email" name="AdminEmail"><br>

Username: <input type="text" name="AdminUserName"><br> 

Password:<input type="password" name="AdminPassword"><br>
 
 <input type="reset" value="Clear">
<input type="submit" value="Add User">
</form>
</center>
</body>
</html>