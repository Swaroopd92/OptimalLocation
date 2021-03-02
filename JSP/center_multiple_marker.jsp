<%@page import="com.support.Centroid"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.util.ArrayList"%>
<%@page import="com.Database.UserDAO"%>
<%@page import="java.sql.ResultSet"%>


<head>

<title>Show/Add multiple markers to Google Maps in asp.net
website</title>

	
<!-- For Style -->
	<link href="<%=request.getContextPath() %>/HomeCSS/templatemo_style.css" rel="stylesheet" type="text/css" /> 
	
<%

int initiator_code = UserDAO.getIntiator_code();


ArrayList<String> list = UserDAO.getLatLag(initiator_code);

//list.add("12.927272~77.585449");
//list.add("12.7378409~77.8327274");

System.out.println("vnvbn "+list);

String lat="",longi="",longi1="",longi2="",longi3="",lat1="",lat2="",lat3="",lat4="",longi4="";

String[] firat = list.get(0).toString().split("~");

lat = firat[0];
longi = firat[1];

String[] second = list.get(1).toString().split("~");

lat1 = second[0];
longi1 = second[1];

String[] third = list.get(2).toString().split("~");

lat2 = third[0];
longi2 = third[1];

ArrayList<Double> center = Centroid.getCenter(Double.parseDouble(lat), Double.parseDouble(longi), Double.parseDouble(lat1), Double.parseDouble(longi1), Double.parseDouble(lat2), Double.parseDouble(longi2));




%>

<style type="text/css">
html {
	height: 100%
}

body {
	height: 100%;
	margin: 0;
	padding: 0
}

#map_canvas {
	height: 100%
}
</style>
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false">
</script>

<script src="<%=request.getContextPath()%>/jquery-1.7.2.min.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/jquery-gmaps-latlon-picker.js">
</script>


<script type="text/javascript">

function initialize()
{

var textbox3 = document.getElementById("textbox3");
textbox3.value=<%=center%>;


}

</script>

</head>

<body onload="initialize()">

<form id="form1" action="<%=request.getContextPath()%>/JSP/get_place.jsp">
<div id="map_canvas" style="width: 500px; height: 400px"></div>

<div style="position: absolute;left: 550px;top: 10px;">
<br></br>
<font color="#DB7093"> Optimal Latitude & Longitude:</font><br>
<input type="text"  name="textbox3" id="textbox3" width="300px">


<br></br>
<input type="submit" class="mainBtn"  value="Get Place">


</div>



</form>
</body>
</html>