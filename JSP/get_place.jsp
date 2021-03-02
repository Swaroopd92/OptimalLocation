<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%
		
		String latlon = request.getParameter("textbox3");
		
		System.out.println("latlon :"+latlon);
		
		String[] str = latlon.split(",");
		
		String latitude=str[0];
		
		String longitude =str[1];
		
		System.out.println("latitude fdfg  :"+latitude);
		
		System.out.println("longitude fdfg  :"+longitude);
		
%>
		
		
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
var country,state,city,pinCode,a,b,place;
function createCORSRequest(method, url) {
  var xhr = new XMLHttpRequest();

  if ("withCredentials" in xhr) {
    // XHR for Chrome/Firefox/Opera/Safari.
    xhr.open(method, url, true);

  } else if (typeof XDomainRequest != "undefined") {
    // XDomainRequest for IE.
    xhr = new XDomainRequest();
    xhr.open(method, url);

  } else {
    // CORS not supported.
    xhr = null;
  }
  return xhr;
}

function getLocationDetails()
{
hide();
latitude1=document.getElementById("latitude").value;
longitude1=document.getElementById("longitude").value;

var url="http://maps.googleapis.com/maps/api/geocode/json?latlng="+latitude1+","+longitude1+"&sensor=true";
    var xhr = createCORSRequest('POST', url);
           if (!xhr)
           {
             alert('CORS not supported');
           }
         
           xhr.onload = function() {
        
            var data =JSON.parse(xhr.responseText);
            
            if(data.results.length>0)
            {
            
            var locationDetails=data.results[0].formatted_address;
            var  value=locationDetails.split(",");
            
            count=value.length;
            
             country=value[count-1];
             state=value[count-2];
             city=value[count-3];
             place=value[count-4];

             alert("Place "+place)
             a=value[count-5];

             b=value[count-6];
            
             
             pin=state.split(" ");
             pinCode=pin[pin.length-1];
             state=state.replace(pinCode,' ');         
             // display the place name //
             var textbox3 = document.getElementById("textbox3");
             textbox3.value=place;

             
            }
            else
            {
             document.getElementById("messageBox").style.visibility="visible";
             document.getElementById("message").innerHTML=
               "No location available for provided details.";
            }
            
           };

           xhr.onerror = function() {
               alert('Woops, there was an error making the request.');
               
           };
        xhr.send();
        
}

function hide()
{
document.getElementById("messageBox").style.visibility="hidden";
}
</script>

<!-- For Style -->
	<link href="<%=request.getContextPath() %>/HomeCSS/templatemo_style.css" rel="stylesheet" type="text/css" /> 
	
</head>
<body onload="hide()">

<%

if(latitude!=null && longitude!=null)
{
	%>
	<div></div>
<br>
<br>
<form action="<%=request.getContextPath()%>/JSP/getnearby_location.jsp">
<div>Latitude:<input type="text" id="latitude" name="lat" value="<%=latitude%>"><br>
<br>
Longitude:<input type="text" id="longitude" name="lon" value="<%=longitude%>"><br>
<br>
<input type="button" value="Get Location" class="mainBtn" onclick="getLocationDetails()">
</button>
<br>
<br>

<input type="text"  name="textbox3" id="textbox3" width="300px">
<br></br>
<input type="submit" class="mainBtn"  value="Find NearBy Location"></form>

</div>
<div id="messageBox"
	style="position: fixed; top: 30%; left: 30%; width: 200px; height: 100px; border-radius: 15px; text-align: center; background-color: skyblue;">
<div
	style="position: absolute; margin-top: 0px; left: 2px; height: 20px; width: 98%; border-radius: 5px; overflow: hidden; background-color: pink;"><label
	id="title" style="color: blue;">Skin Advisor</label></div>
<div
	style="position: absolute; margin: 2px; top: 25px; height: 80px; width: 100%;">
<label id="message" style="color: blue; font-family: Helvetica;"></label></div>
</div>
	<%
}
else
{
	%>
	<script type="text/javascript">
	alert("No Landmark!!!")
	</script>
	<%
	
}

%>


</body>
</html>