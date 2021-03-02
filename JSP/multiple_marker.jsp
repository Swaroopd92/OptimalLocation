<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.util.ArrayList"%>
<%@page import="com.Database.UserDAO"%>
<%@page import="java.sql.ResultSet"%>



<head>
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

String[] fourth = list.get(3).toString().split("~");

lat3 = fourth[0];
longi3 = fourth[1];

String[] fifth = list.get(4).toString().split("~");

lat4 = fifth[0];
longi4 = fifth[1];

%>


<title>Member Preferred Location </title>
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
<script type="text/javascript">
function initialize()
{
var markers = [
{
"title": "Chennai",
"lat": <%=lat%>,
"lng": <%=longi%>,
"description": "Chennai"
},
{
"title": "Hyderabad",
"lat": <%=lat1%>,
"lng": <%=longi1%>,
"description": "Hyderabad"
},
{
"title": "Bangalore",
"lat": <%=lat2%>,
"lng": <%=longi2%>,

"description": "Bangalore"
},
{
"title": "visakhapatnam",
"lat": <%=lat3%>,
"lng": <%=longi3%>,

"description": "visakhapatnam"
},
{
	"title": "visakhapatnam",
	"lat": <%=lat4%>,
	"lng": <%=longi4%>,

	"description": "visakhapatnam"
	}

];
var mapOptions = {
center: new google.maps.LatLng(11.44, 78.79),
zoom: 5,
mapTypeId: google.maps.MapTypeId.ROADMAP
//  marker:true
};
var infoWindow = new google.maps.InfoWindow();
var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
for (i = 0; i < markers.length; i++) {
var data = markers[i]
var myLatlng = new google.maps.LatLng(data.lat, data.lng);
var marker = new google.maps.Marker({
position: myLatlng,
map: map,
title: data.title
});
(function(marker, data) {

// Attaching a click event to the current marker
google.maps.event.addListener(marker, "click", function(e) {
infoWindow.setContent(data.description);
infoWindow.open(map, marker);
});
})(marker, data);
}
}
</script>
</head>
<body onload="initialize()">
<form id="form1" runat="server">
<div id="map_canvas" style="width: 500px; height: 400px"></div>
</form>
</body>
</html>