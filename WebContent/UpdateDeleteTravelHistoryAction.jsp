<%@page import="com.travelmate.hibernate.*,java.util.*"%>

<html>
<body>

<%
String result="";
String action=request.getParameter("action");
String UserName=(String)session.getAttribute("UserName");;
int Id=Integer.parseInt(request.getParameter("Id"));
String TravelName=request.getParameter("TravelName");
String TravelLocation=request.getParameter("TravelLocation");
String TravelStartDate=request.getParameter("TravelStartDate");
String TravelEndDate=request.getParameter("TravelEndDate");
String ModeOfTransportation=request.getParameter("ModeOfTransportation");
String TravelDetails=request.getParameter("TravelDetails");
String TravellingWith=request.getParameter("TravellingWith");

 TravelHistory th=new TravelHistory();
th.setUserName(UserName);
th.setId(Id);
th.setTravelName(TravelName);
th.setTravelLocation(TravelLocation);
th.setTravelStartDate(TravelStartDate);
th.setTravelEndDate(TravelEndDate);
th.setModeOfTransportation(ModeOfTransportation);
th.setTravelDetails(TravelDetails);
th.setTravellingWith(TravellingWith);
if(action.equalsIgnoreCase("Update History"))
{
	result=TravelHistoryWorker.updateTravelHistory(th);
}
else
{
	result=TravelHistoryWorker.deleteTravelHistory(th);
}
if(result.equals(Results.SUCCESS))
{
response.sendRedirect("TravelHistory.jsp");
}
else
{
	%>
<script>
window.alert("Something went wrong! Pls try again");
window.location="UpdateHistory.jsp";
</script>
<%
}
%>

</body>
</html>

