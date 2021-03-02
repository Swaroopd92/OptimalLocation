<!DOCTYPE html>
<%@page import="com.Database.UserDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.support.Utility"%>
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

<body>

<form action="<%=request.getContextPath()%>/SendRequest?submit=get" method="post" target="myframe">

	<H2 style="position: absolute;top: -30px;color: #DB7093;">Select Optimal Location</H2>


	<fieldset class="gllpLatlonPicker">
	
	<!--  <input type="text" class="gllpSearchField">
		<input type="button" class="gllpSearchButton" value="search">
		!-->
		
		
		<div class="gllpMap">Google Maps</div>
		<br/>
		<font style="color: #DB7093;">lat/lon:</font>
			<input type="text" name="lat" class="gllpLatitude" value="21.1289955"/>
			/
			<input type="text" name="lon" class="gllpLongitude" value="82.7792201"/>
		
		<input type="submit" class="mainBtn" value="Select Member">
		<br/>
	</fieldset>

</form>
	
	<%
	
	if(Utility.parse(request.getParameter("no"))==2)
	{
%>
		
		<script type="text/javascript">
		
		alert("Request have sented successfully!");
		</script>				
<%
	}
	
%>
</body>
</html>
