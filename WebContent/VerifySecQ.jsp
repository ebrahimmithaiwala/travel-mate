<%@page import="java.util.*,com.travelmate.hibernate.*"%>
<html>
<head>
<title>Verify</title>
</head>

<body>
	<center>
		<h1>Verify</h1>
		<form method="post" action="VerifySecQAction.jsp">
		
		<%
		  String UserEmail=(String)session.getAttribute("UserEmail") ;
          User u=new User();
          u=UserWorker.getSecurityQuestion(UserEmail);
        %>
			<table border="0">
				<tr>
					<td>Security Question: </td>
					<td><input type="text" name="SecurityQuestion" size="50" value="<%=u.getSecurityQuestion()%>"/></td>
				</tr>
				<tr>
					<td>Security Answer: </td>
					<td><input type="text" name="SecurityAnswer" size="50"/></td>
				</tr>
				
				
				<td><input type="hidden" name="UserEmail" value=<%=UserEmail %>/></td>
					
					<tr>
					<td colspan="2">
						<input type="submit" name="action" value="Check">
					</td>
				</tr>
				
				</table>
		</form>
	</center>
</body>
</html>
				
				
				
				
