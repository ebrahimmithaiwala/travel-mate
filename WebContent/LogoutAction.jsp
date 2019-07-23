<%@page import="com.travelmate.hibernate.*,java.util.*, org.apache.commons.codec.binary.Base64"%>

<%
String UserName=(String)session.getAttribute("UserName") ;
session.invalidate();
request.logout();

response.sendRedirect("index.jsp");

%>