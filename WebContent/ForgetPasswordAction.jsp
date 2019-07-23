<%@page import="com.travelmate.hibernate.*,java.util.*"%>
<html>
	<body>
		<%
			String action = request.getParameter("action");
			if(action.equalsIgnoreCase("Check"))
			{
				
				String UserEmail = request.getParameter("UserEmail");
				
				User u = new User();
				
				u.setUserEmail(UserEmail);
				
				String result = UserWorker.forgetPassCheck(u);
				 if(result.equals(Results.SUCCESS))
				{
					session.setAttribute("UserEmail", u.getUserEmail());
					   response.sendRedirect("VerifySecurityQuestion.jsp");
                }
                else
                {
                   %>
                   <script>
                   window.alert("Invalid Email");
                   window.location="ForgetPassword.jsp";
                   </script>
                   <% 
                }
			}
		%>
	</body>
</html>