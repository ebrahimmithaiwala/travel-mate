<%@page import="com.travelmate.hibernate.*,java.util.*"%>
<html>
	<body>
		<%
			String action = request.getParameter("action");
			if(action.equalsIgnoreCase("Login"))
			{
				
				String AdminUserName = request.getParameter("AdminUserName");
				String AdminPassword = request.getParameter("AdminPassword");
				
				Admin a = new Admin();
				a.setAdminUserName(AdminUserName);
				a.setAdminPassword(AdminPassword);
                String admin=a.getAdminUserName();
				String result = AdminWorker.adminLogin(a);
                
				if(result.equals(Results.SUCCESS))
				{
					session.setAttribute("AdminUserName", a.getAdminUserName());
					response.sendRedirect("AdminDashboard.jsp");
                }
                else
                { 
                %>
                    <script>
                    window.alert("Incorrect Username or password");
                	window.location="AdminLogin.jsp";
                	</script>
                	<%
                }
			}
		%>
	</body>
</html>