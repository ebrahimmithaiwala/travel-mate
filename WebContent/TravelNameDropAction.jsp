<%@page import="com.travelmate.hibernate.*,java.util.*,java.sql.*"%>
<html>
	<body>
	<%
	String TravelName=request.getParameter("TravelName");
	TravelInventory ti=new TravelInventory();
	ti.setTravelName(TravelName);
	%>
		<%
			String action = request.getParameter("action");
			if(action.equalsIgnoreCase("Select"))
			{
				
				session.setAttribute("TravelName",ti.getTravelName());
				 response.sendRedirect("UDProducts.jsp");
					   }
                else
                {
                	%>
                	<script>
                	window.alert("Pls select correct travel name");
                    window.location="ProductDetails.jsp";
                    <%
                }
			
		%>
	</body>
</html>