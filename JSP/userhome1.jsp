
<!DOCTYPE html>
<%@page import="com.Database.UserDAO"%>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />	
	<title>Home Page</title>

	<!-- Included Bootstrap CSS Files -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/HomeJS/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/HomeJS/bootstrap/css/bootstrap-responsive.min.css" />
	
	<!-- Css -->	
	<link href="<%=request.getContextPath() %>/CSS/popup.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/HomeCSS/bootstrap.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/HomeCSS/style.css" />
	<script src="<%=request.getContextPath()%>/HomeJS/jquery-1.10.0.min.js"></script>
	<script src="<%=request.getContextPath()%>/HomeJS/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/HomeJS/script.js"></script>
	
<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/JS/map.js"></script>

<style>
	
	#glow, #slow, #blurry { font-size: 30px;  }
	#blurry, #glow { font-family: Gill Sans Ultra Bold;  }
	#subtle { font-family: Consolas, Courier, monospace; font-size: 40px; text-shadow: #ccc 3px 3px 3px; }
	#glow { letter-spacing: 2px; text-shadow: #f00 0 0 0; color: #cc2c2c; }
	#slow { font-family: Arial, Helvetica, sans-serif; letter-spacing: 2px; text-shadow: #259 5px 5px 5px; color: #49b; }
	#blurry { font-size: 80px; letter-spacing: -3px; text-shadow: #aaa 0 0 10px; color: transparent; }
	#button { position: relative; cursor: pointer; color: #3a3; font-family: Gill Sans Ultra Bold; font-size: 50px; text-shadow: #141 5px 5px 0; }
	
	.ex11 {ont-size: 50px;font-family: Gill Sans Ultra Bold;  text-shadow: 0 1px #DB7093, -1px 0 #cdd2d5, -1px 2px #DB7093, -2px 1px #cdd2d5, -2px 3px #DB7093, -3px 2px #cdd2d5, -3px 4px #DB7093, -4px 3px #cdd2d5, -4px 5px #DB7093, -5px 4px #cdd2d5, -5px 6px #DB7093, -6px 5px #cdd2d5, -6px 7px #DB7093, -7px 6px #cdd2d5, -7px 8px #DB7093;, -8px 7px #cdd2d5; }
	
	</style>
	
	
</head>

<%

boolean flag=false;
String rol = session.getAttribute("role").toString();

int st = UserDAO.getRequestStatus();
if(st!=0)
{
	flag = true;
}
%>
<body>
	
			
<div style="position:absolute;top:0px;left:-35px; width:1050px;text-align: center;height: 100px;">
	      <img src="<%=request.getContextPath()%>/Img/header1.png" height="100px" alt="Genius" width="1100">
</div> 
<div style="position:absolute;top:0px;left:-35px; width:100px;text-align: center;left:10px;">
	      <img src="<%=request.getContextPath()%>/Img/map_icon.png" height="100" alt="Genius" width="100">
</div>

<div style="position:absolute;top:-20px;left:-35px; width:930px;text-align: center;left: 60px;">
<h1 class="ex11">
            	Privacy-Preserving Optimal Meeting Location Determination </h1>
</div>


		<div class="container">
		
			<div class="row">
				<div class="span12">
				
				<iframe id="keep-up-date" style="position: relative;width: 900px;height: 500px;" name="myframe">
					<div id="keep-up-date">
				
						<h1>Welcome To Privacy-Preserving Optimal Meeting Location Determination!</h1>
						<br />
						<form method="post" action="#" class="form form-inline">
		  						
						</form>
						
					</div></iframe>
				</div>
			</div>
		</div>	
	
<form action="">
	<div id="socials-bar">
		
					
					<a href="<%=request.getContextPath()%>/JSP/Member/viewprofile.jsp" title="View Profile" target="myframe"><img src="<%=request.getContextPath()%>/Img/Person-Male-Dark-icon.png" alt="Profile" /><a/>
					
					<a href="<%=request.getContextPath()%>/JSP/Member/select_optimal_location.jsp" title="Initiate Optimal Location" target="myframe"><img src="<%=request.getContextPath()%>/Img/socials/png/48x48/location1.png" alt="facebook page" /><a/>
					
					<a href="<%=request.getContextPath()%>/JSP/Member/view_optimal_location.jsp" title="View Optimal Location" target="myframe" ><img src="<%=request.getContextPath()%>/Img/map-icon.png" alt="Optimal Location Page" /><a/>
					
					<a href="<%=request.getContextPath()%>/JSP/Member/changepass.jsp" title="Change Password" target="myframe" ><img src="<%=request.getContextPath()%>/Img/password-icon.png" alt="change password page" /><a/>
					<a href="<%=request.getContextPath()%>/SignOut?no=1" title="Logout"><img src="<%=request.getContextPath()%>/Img/machine.png" alt="logout page" /><a/>
	
	
	</div>
	<div style="position: absolute;top: 630px;left: 50px;"><p>Welcome, <%=rol%></p></div>
	</form>

	<%
	if(flag)
	{
		%>
		<script type="text/javascript">
		
		alert("View the Requested Location for Meeting")
		</script>
		<%
	}
	
	%>
	

</body>
</html>