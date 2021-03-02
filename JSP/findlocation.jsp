<%@page import="com.support.Utility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Css -->	
	<link href="<%=request.getContextPath() %>/CSS/popup.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/demo.css">
		
		
		 <script type="text/javascript" src="<%=request.getContextPath() %>/JS/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/JS/script.js"></script>
		
		<script src="<%=request.getContextPath()%>/JS/jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/JS/jquery.form.min.js"></script>
		<script src="<%=request.getContextPath()%>/JS/jquery.validate.js"></script>
		<script src="<%=request.getContextPath()%>/JS/jquery.modal.js"></script>
	<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/JS/map.js"></script>
</head>
<body>

<form action="<%=request.getContextPath()%>/UserLocation" method="post">
<input type="text" id="x" name="latitude" placeholder="Enter The Latitude(x-asis)" class="easyui-validatebox"  required="required" title="Math The Format : -90.XXXXXX to 90.XXXXXX"/>
	
	<input type="text" id="y" name="longitude" placeholder="Enter The Longitude(y-asis)" class="easyui-validatebox"  required="required" title="Math The Format : -90.XXXXXX to 90.XXXXXX"/>
	<input type="image" title="Find Optimal Location" src="<%=request.getContextPath()%>/Img/socials/png/48x48/location1.png" onclick="return getMap();"></input>
		
	<button type="submit" class="button" style="position: absolute;top: 200px;left: 200px;">Ok</button>
	
	</form>
	<%-- Getting Google Map Popup(Starts) --%>  
	<div id="light" class="white_content" > 
		<a href = "javascript:void(0)" onclick = "closelightbox()" style="float:right"><img src="<%=request.getContextPath()%>/Img/close.gif" alt="" /></a>
		
		<%--
				<div id="googleMap"  style="width:675px;height:300px;"></div>
		 --%>
		<div  id="googleMap" style="width:710px;height:510px;"></div>
		
    </div>
    <div id="fade" class="black_overlay"></div>
	 
	<%-- Getting Google Map Popup(Ends) --%>
	
	 
    <%
	if(Utility.parse(request.getParameter("no"))==1)
	{
%>
		<div class="info" id="message" style="position:absolute;top:421px;left:11px">	
			<p>Location Updated Successfully!</p>
		</div>			
<%
	}
    if(Utility.parse(request.getParameter("no"))==2)
	{
%>
		<div class="info" id="message" style="position:absolute;top:421px;left:11px">	
			<p>Something Wrong,Please Try Again!</p>
		</div>			
<%
	}
	
	
%>

</body>
</html>