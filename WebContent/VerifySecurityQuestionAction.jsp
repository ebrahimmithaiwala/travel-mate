<%@page import="com.travelmate.hibernate.*,java.util.*"%>
<html>
	<body>
		<%
		    String UserEmail=(String) session.getAttribute("UserEmail");
			//String action = request.getParameter("action");
			//if(action.equalsIgnoreCase("Check"))
			//{
				
				String SecurityAnswer = request.getParameter("SecurityAnswer");
				
				User u = new User();
				
				u.setSecurityAnswer(SecurityAnswer);
				
				String result = UserWorker.verifySecQ(u);
				 if(result.equals(Results.SUCCESS))
				{
					
					
					   response.sendRedirect("UpdateUserPass.jsp?UserEmail="+UserEmail);
                }
                else
                {
                    response.sendRedirect("failure.jsp");
                }
			//}
		%>
	</body>
</html>