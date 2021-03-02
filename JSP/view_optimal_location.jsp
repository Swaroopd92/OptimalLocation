<!DOCTYPE html>
<%@page import="com.Database.UserDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
	<title>Google Maps Latitude and Longitude Picker jQuery plugin</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/HomeCSS/demo.css"/>

	<!-- Dependencies: JQuery and GMaps API should be loaded first -->
	<script src="<%=request.getContextPath()%>/HomeJS/jquery-1.7.2.min.js"></script>
	<script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

	<!-- CSS and JS for our code -->
	<link href="<%=request.getContextPath() %>/HomeCSS/templatemo_style.css" rel="stylesheet" type="text/css" /> 
	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/HomeCSS/jquery-gmaps-latlon-picker.css"/>
	<script src="<%=request.getContextPath()%>/HomeJS/jquery-gmaps-latlon-picker.js"></script>
</head>

<%
int initiator_code = UserDAO.getIntiator_code();

ArrayList<String> list = UserDAO.getLatLag();
			
			System.out.println("List :"+list);

String lat="",longi="";

String[] firat = list.get(0).toString().split("~");

lat = firat[0];
longi = firat[1];

%>
<body>


	<H2 style="position: absolute;top: -30px;color: #DB7093;">View Optimal Location</H2>


	<fieldset class="gllpLatlonPicker">
	
	<!--  <input type="text" class="gllpSearchField">
		<input type="button" class="gllpSearchButton" value="search">
		!-->
		
		
		<div class="gllpMap" style="position: relative;width: 600px;height: 300px;">Google Maps</div>
		<br/>
		<font style="color: #DB7093;"></font>
			<input type="hidden" name="lat" class="gllpLatitude" value="<%=lat%>"/>
			
			<input type="hidden" name="lon" class="gllpLongitude" value="<%=longi %>"/>
		<input type="hidden" class="gllpZoom" value="5"/>
		
		<br/>
	</fieldset>

	

</body>
</html>
