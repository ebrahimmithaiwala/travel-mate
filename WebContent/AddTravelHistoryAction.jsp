<%@page import="com.travelmate.hibernate.*,java.util.*"%>

<html>
<body>
<%

String UserName=(String)session.getAttribute("UserName");
String TravelName=request.getParameter("TravelName");
String TravelLocation=request.getParameter("TravelLocation");
String TravelStartDate=request.getParameter("TravelStartDate");
String TravelEndDate=request.getParameter("TravelEndDate");
String ModeOfTransportation=request.getParameter("ModeOfTransportation");
String TravelDetails=request.getParameter("TravelDetails");
String TravellingWith=request.getParameter("TravellingWith");


TravelHistory th=new TravelHistory();
User u=new User();

th.setUserName(UserName);
th.setTravelName(TravelName);
th.setTravelLocation(TravelLocation);
th.setTravelStartDate(TravelStartDate);
th.setTravelEndDate(TravelEndDate);
th.setModeOfTransportation(ModeOfTransportation);
th.setTravelDetails(TravelDetails);
th.setTravellingWith(TravellingWith);


String result=TravelHistoryWorker.addTravelHistory(th);

if(result.equals(Results.SUCCESS))
{
	response.sendRedirect("TravelHistory.jsp");
}
else
{
	%>
	<script>
	window.alert("Something went wrong! Pls try again");
	window.location="AddTravel.jsp";
	</script>
	<%
}

%>

</body>
</html>
