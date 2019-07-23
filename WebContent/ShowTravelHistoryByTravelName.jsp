<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     import="java.util.*,com.travelmate.hibernate.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<form method="POST" action="UpdateDeleteTravelHistoryAction.jsp" >
<%
TravelHistory th=new TravelHistory();
User u=new User();
String result="";
String TravelName=request.getParameter("TravelName");
String UserName=(String)session.getAttribute("UserName");

 th=TravelHistoryWorker.getTravelHistoryByTravelNameAndUserName(TravelName,UserName);



%>

<input type="hidden" name="Id" value="<%=th.getId()%>">
<input type="hidden" name="UserName" value="<%=UserName%>">

Travel Name: <input type="text" name="TravelName" value="<%=th.getTravelName()%>"><br>

Travel Location:<input type="text" name="TravelLocation" value="<%=th.getTravelLocation()%>"><br> 

Travel Start Date:<input type="date" name="TravelStartDate" value="<%=th.getTravelStartDate()%>"><br>

Travel End Date:<input type="date" name="TravelEndDate" value="<%=th.getTravelEndDate()%>"><br>

Mode Of Transportation:<input type="text" name="ModeOfTransportation" value="<%=th.getModeOfTransportation()%>"><br>

Travel Details:<input type="text" name="TravelDetails" value="<%=th.getTravelDetails()%>"><br> 

Travelling With:<input type="text" name="TravellingWith" value="<%=th.getTravellingWith()%>"><br> 




<input type="submit" name="action" value="Update">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name="action" value="Delete">
</form>
</center>
</body>
</html>