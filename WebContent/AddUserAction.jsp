<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "java.util.*"
    import = "com.travelmate.hibernate.*"
    import = "java.io.*"
    import = "org.apache.commons.io.IOUtils"
    import = "org.apache.commons.fileupload.*"
    import = "org.apache.commons.fileupload.disk.*"
    import = "org.apache.commons.fileupload.servlet.*"
    import = "org.apache.commons.io.*"
    import = "java.io.*"
    import = "org.apache.poi.xssf.usermodel.*"%>
<html>
<body>
<%
String FirstName = "";
String LastName = "";
String UserEmail="";
String ContactNumber="";
String UserName="";
String UserPassword="";
String SecurityQuestion="";
String SecurityAnswer="";
String UserGender="";
InputStream is = null;
byte[] profile=null;


InputStream filecontent=null;
try{
	FileItemFactory factory = new DiskFileItemFactory(); 
	ServletFileUpload upload = new ServletFileUpload(factory); 
	List items = null;
	items = upload.parseRequest(request); 
	Iterator iter = items.iterator();
	while (iter.hasNext()) {
	    FileItem item = (FileItem) iter.next();

	    if (item.isFormField()) {
	      String name = item.getFieldName();
	      if(name.equals("FirstName")){
	    	  FirstName = item.getString();
	      }else if(name.equals("LastName")){
	    	  LastName = item.getString();}
	      else if(name.equals("UserEmail")){
	    	  UserEmail = item.getString();}
	      else if(name.equals("ContactNumber")){
	    	  ContactNumber = item.getString();}
	      else if(name.equals("UserName")){
	    	  UserName = item.getString();}
	      else if(name.equals("UserPassword")){
	    	  UserPassword = item.getString();}
	      else if(name.equals("SecurityQuestion")){
	    	  SecurityQuestion=item.getString();}
	      else if(name.equals("SecurityAnswer")){
	    	  SecurityAnswer = item.getString();}
	      else if(name.equals("UserGender")){
	    	  UserGender = item.getString();}
	     }
	    
	    else{
	    	String fieldname = item.getFieldName();
            String filename = FilenameUtils.getName(item.getName());
            filecontent = item.getInputStream();
            profile = new byte[(int) filecontent.available()];
            filecontent.read(profile);
	    }
	}
}catch(Exception e){
		e.printStackTrace();
	}

User u = new User();
u.setFirstName(FirstName);
u.setLastName(LastName);
u.setUserEmail(UserEmail);
u.setContactNumber(ContactNumber);
u.setUserName(UserName);
u.setUserPassword(UserPassword);
u.setSecurityQuestion(SecurityQuestion);
u.setSecurityAnswer(SecurityAnswer);
u.setUserGender(UserGender);
u.setUserProfilePic(profile);


String result = UserWorker.addUser(u);
if(result.equals(Results.SUCCESS)){
	response.sendRedirect("index.jsp");
}else{
	%>
	<script>
	window.alert("Registration Failed! Pls try again");
	window.location("popup.jsp");
	</script>
	<% 
}
%>


</body>
</html>
