<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.travelmate.hibernate.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<User> list=UserWorker.getAllUser();

%>
<center>
<table border=4 cellspacing=4>
<tr>
<th><h2>ID&nbsp;</h2></th>
<th><h2>FirstName&nbsp;</h2></th>
<th><h2>LastName&nbsp;</h2></th>
<th><h2>Emailt&nbsp;</h2></th>
<th><h2>Contact&nbsp;</h2></th>
<th><h2>Username&nbsp;</h2></th>
<th><h2>Password&nbsp;</h2></th>
<th><h2>Security Question&nbsp;</h2></th>
<th><h2>Security Answert&nbsp;</h2></th>
<th><h2>Gender&nbsp;</h2></th>
<th><h2>Profile Pic&nbsp;</h2></th>
</tr>
<%
for(User u:list)
{
int Id=u.getId();
%>
<tr>
<th><a href="ShowUserById.jsp?Id=<%= Id%>"><h2><%= u.getId()%></h2></a></th>
<th><h2><%= u.getFirstName()%></h2></th>
<th><h2><%= u.getLastName()%></h2></th>
<th><h2><%= u.getUserEmail()%></h2></th>
<th><h2><%= u.getContactNumber()%></h2></th>
<th><h2><%= u.getUserName()%></h2></th>
<th><h2><%= u.getUserPassword()%></h2></th>
<th><h2><%= u.getSecurityQuestion()%></h2></th>
<th><h2><%= u.getSecurityAnswer()%></h2></th>
<th><h2><%= u.getUserGender()%></h2></th>
<th><h2><%= u.getUserProfilePic()%></h2></th>


</tr>
<%
}
%>
</table>
</center>
</body>
</html>