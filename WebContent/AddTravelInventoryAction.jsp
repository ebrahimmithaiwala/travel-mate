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
String ProductCategory="";
String ProductName="";
String ProductQuantity="";


byte[] ProductPic = null;

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
	      if(name.equals("ProductCategory")){
	    	  ProductCategory = value;
	      }else if(name.equals("ProductName")){
	    	  ProductName = value;
	      }else if(name.equals("ProductQuantity")){
	    	  ProductQuantity = value;
	      }else if(name.equals("UserName")){
	    	  UserName = value;
	      }else if(name.equals("TravelName")){
	    	  TravelName = value;
	      }
	    }
	    else{
	    	String fieldname = item.getFieldName();
            String filename = FilenameUtils.getName(item.getName());
            filecontent = item.getInputStream();
            ProductPic = new byte[(int) filecontent.available()];
            filecontent.read(ProductPic);
	    }
	}
}catch(Exception e){
		e.printStackTrace();
	}




TravelInventory ti=new TravelInventory();
User u=new User();
TravelHistory th=new TravelHistory();
ti.setUserName(UserName);
ti.setTravelName(TravelName);
ti.setProductCategory(ProductCategory);
ti.setProductName(ProductName);
ti.setProductQuantity(ProductQuantity);
ti.setProductPic(ProductPic);

String result=TravelInventoryWorker.addTravelInventory(ti);

if(result.equals(Results.SUCCESS))
{
	session.setAttribute("TravelName",ti.getTravelName());
	response.sendRedirect("AddInventory.jsp");
}
else
{
                %>
               <script>
                window.alert("Something went wrong! Pls try again");
                window.location="AddInventory.jsp";
               </script>
<%
}

%>

</body>
</html>
