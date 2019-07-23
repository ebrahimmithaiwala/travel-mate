<%@page import="com.travelmate.hibernate.*,java.util.*"%>

<html>
<body>
<%
String AdminName=request.getParameter("AdminName");
String AdminEmail=request.getParameter("AdminEmail");
String AdminUserName=request.getParameter("AdminUserName");
String AdminPassword=request.getParameter("AdminPassword");

Admin a=new Admin();
a.setAdminName(AdminName);
a.setAdminEmail(AdminEmail);
a.setAdminUserName(AdminUserName);
a.setAdminPassword(AdminPassword);

String result=AdminWorker.addAdmin(a);

if(result.equals(Results.SUCCESS))
{
	response.sendRedirect("success.jsp");
}
else
{
	response.sendRedirect("failure.jsp");
}

%>

</body>
</html>
