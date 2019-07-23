<%@page import="com.travelmate.hibernate.*,java.util.*"
   		import = "java.util.*"
		import = "java.io.*"
    	import = "org.apache.commons.io.IOUtils"
    	import = "org.apache.commons.fileupload.*"
    	import = "org.apache.commons.fileupload.disk.*"
    	import = "org.apache.commons.fileupload.servlet.*"
    	import = "org.apache.commons.io.*"
    	import = "org.apache.poi.xssf.usermodel.*" %>

<html>
<body>
<%
String UserName="";
String TravelName="";
String Tag="";
byte[] Pic = null;

InputStream filecontent = null;
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
	      String value = item.getString();
	      if(name.equals("UserName")){
	    	  UserName = value;
	      }else if(name.equals("TravelName")){
	    	  TravelName = value;
	      }else if(name.equals("Tag")){
	    	  Tag = value;
	      }
	      }
	      
	    else{
	    	String fieldname = item.getFieldName();
            String filename = FilenameUtils.getName(item.getName());
            filecontent = item.getInputStream();
            Pic = new byte[(int) filecontent.available()];
            filecontent.read(Pic);
	    }
	}
}catch(Exception e){
		e.printStackTrace();
	}

Memories m=new Memories();

m.setUserName(UserName);
m.setTravelName(TravelName);
m.setTag(Tag);
m.setPic(Pic);

String result=MemoriesWorker.addMemories(m);

if(result.equals(Results.SUCCESS))
{
	session.setAttribute("TravelName",m.getTravelName());
	%>
	<script>
	window.alert("Photo Added Successfully");
	window.location="AddGallery.jsp";
	</script>
	<%
}
else
{
	%>
	<script>
	window.alert("Something went wrong! Pls try again");
	window.location="AddGallery.jsp";
	</script>
	<%
}

%>


	      