<%@page import="com.travelmate.hibernate.*,java.util.*,java.sql.*"%>
<html>
	<body>
	<%
	String TravelName=request.getParameter("TravelName");
	Memories m=new Memories();
	m.setTravelName(TravelName);
	%>
		<%
			String action = request.getParameter("action");
			if(action.equalsIgnoreCase("Select"))
			{
				
				session.setAttribute("TravelName",m.getTravelName());
				 response.sendRedirect("Gallery.jsp");
			}
                else
                {
                	%>
                	<script>
                    window.alert("Pls select correct travel name");
                    window.location="GalleryDrop.jsp";
                    </script>
                    <%
                }
			
		%>
	</body>
</html>