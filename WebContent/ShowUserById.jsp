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
<center>
<form method="POST" action="UserAction.jsp" enctype="multipart/form-data">
<%
String i=request.getParameter("Id");
int Id=Integer.parseInt(i);

User u=UserWorker.getUserById(Id);


%>

Name: <input type="text" name="FirstName" value="<%=u.getFirstName()%>"><br> 

Last Name: <input type="text" name="LastName" value="<%=u.getLastName()%>"><br>

User Email <input type="email" name="UserEmail" value="<%=u.getUserEmail()%>"><br> 

Contact Number<input type="text" name="ContactNumber" value="<%=u.getContactNumber()%>"><br>

User Name<input type="text" name="UserName" value="<%=u.getUserName()%>"><br>

User Password<input type="text" name="UserPassword" value="<%=u.getUserPassword()%>"><br>

Security Question <select name="SecurityQuestion">
	 <option value="">Choose</option>
	 <option>how</option>
</select><br>

Secuiry Answer <input type="text" name="SecurityAnswer" value="<%=u.getSecurityAnswer()%>"><br>

User Gender:<input type="text" name="UserGender" value="<%=u.getUserGender()%>"><br>

Profile Pic:<input type="File" name="UserProfilePic" value="<%=u.getUserProfilePic()%>"><br>

<input type="hidden" name="Id" value="<%=u.getId()%>">
<br><br>

<input type="submit" name="action" value="Update">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name="action" value="Delete">
</center>
</form>
</body>
</html>