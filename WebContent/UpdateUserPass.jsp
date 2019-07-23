<%@page import="java.util.*,com.travelmate.hibernate.*, org.apache.commons.codec.binary.Base64"%>
<%@page import="java.time.*" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
  
  
<%
User u=new User();
String UserEmail=(String)session.getAttribute("UserEmail") ;
if(UserEmail==null){
%>	
<script>
	window.alert("You are not logged in. Please log in ");
	window.location="index.jsp";
</script>
<%
}
else{
%>

  <body>
   <form method="POST" action="UpdateUserPassAction.jsp" enctype="multipart/form-data">
 
       
                	
                	
      User Password:<input type="text" name="UserPassword" >
      
      <input type="hidden" name="UserEmail" value="<%=UserEmail%>">
      
      <input type="submit" name="action" value="Update">
      
      <%
}
      %>
      
      </form>
      </body>
      </html>
      
      
      
      
      
      