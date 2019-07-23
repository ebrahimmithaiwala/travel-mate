<%@page import="com.travelmate.hibernate.*,java.util.*"%>
<html>
	<body>
		<%
			String action = request.getParameter("action");
			if(action.equalsIgnoreCase("Login"))
			{
				
				String UserName = request.getParameter("UserName");
				String UserPassword = request.getParameter("UserPassword");
				
				User u = new User();
				TravelHistory th=new TravelHistory();
				u.setUserName(UserName);
				u.setUserPassword(UserPassword);
                String user=u.getUserName();
				String result = UserWorker.userLogin(u);
                
				if(result.equals(Results.SUCCESS))
				{
					session.setAttribute("UserName", u.getUserName());
					session.setAttribute("TravelName",th.getTravelName());
					response.sendRedirect("dashboard.jsp");
                }
                else
                { 
                %>
                    <script>
                    window.alert("Incorrect username or password");
                	window.location="index.jsp";
                	</script>
                	<%
                }
			}
		%>
	</body>
</html>