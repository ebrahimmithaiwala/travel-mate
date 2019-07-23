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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String result="";
    String actval="";
    String UserName="";
    String TravelName="";
	String ProductCategory = "";
	String ProductPic = "";
	String ProductName="";
	String ProductQuantity="";
	int id=0;
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
		      
		      if(name.equals("ProductCategory")){
		    	  ProductCategory = item.getString();
		      }else if(name.equals("UserName")){
		    	  UserName = item.getString();}
		      
		      else if(name.equals("TravelName")){
		    	  TravelName = item.getString();}
		      
		      else if(name.equals("ProductName")){
		    	  ProductName = item.getString();}
		      
		      else if(name.equals("ProductQuantity")){
		    	  ProductQuantity = item.getString();}
		      
		      else if(name.equals("action")){
		    	  actval=item.getString();}
		     
		      else if(name.equals("Id")){
		    	  id=Integer.parseInt(item.getString());
		      }
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

	
	
   // TravelInventory ti=TravelInventoryWorker.getTravelInventoryByUserNameAndTravelName(UserName,TravelName);
	TravelInventory ti=new TravelInventory();
	ti.setId(id);
	//if(TravelName.length() == 0){
	ti.setTravelName(TravelName);
	//if(UserName.length() ==0){
	ti.setUserName(UserName);
	ti.setProductCategory(ProductCategory);
	ti.setProductName(ProductName);
	ti.setProductQuantity(ProductQuantity);
	if(profile.length != 0)
	ti.setProductPic(profile);


if(actval.equals("Update Inventory")){
	
	 result = TravelInventoryWorker.updateTravelInventory(ti);
}
else if(actval.equals("Delete Inventory")){
	result=TravelInventoryWorker.deleteTravelInventory(ti);
}
	if(result.equals(Results.SUCCESS)){
		response.sendRedirect("UDProducts.jsp");
	}else{
		%>
		<script>
		window.alert("failure");
		window.location="UDProducts.jsp";
	</script><%
	}


%>
</body>
</html>