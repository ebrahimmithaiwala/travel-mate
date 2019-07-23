<%@page import="com.travelmate.hibernate.*,java.util.*,java.sql.*"%>

<html>
<body>

<%
String result="";
String action=request.getParameter("action");
String UserEmail=(String)session.getAttribute("UserEmail");
String UserPassword=request.getParameter("UserPassword");

User u=new User();
u.setUserPassword(UserPassword);

if(action.equalsIgnoreCase("Update"))
{
	session.getAttribute("UserEmail");
	 
	String Query="Update from user" +" "+ "where UserEmail ="+ "'" + UserEmail + "'";
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/travelmate","root","root");
	Statement stm=conn.createStatement();
	ResultSet rs=stm.executeQuery(Query);

}

if(result.equals(Results.SUCCESS))
{
	%>
	<script>
	window.alert("Password changed");
	window.location="index.jsp";
	</script>
	<% 
}
else
{
	%>
	<script>
	window.alert("Something went wrong! Pls try again");
	window.location="UpdateUserPass.jsp";
	</script>
	<%
}
%>
</body>
</html>