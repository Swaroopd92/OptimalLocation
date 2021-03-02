<%@page import="com.support.Utility"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="com.Database.UserDAO"%><html>
<head>
	
	<title>Owner Profile</title>
	
<script type="text/javascript">
function change()
{

	
	if(document.myform.oldpass.value=="")
	{
		alert("Plese Enter your Old Password");
		document.myform.oldpass.focus();
		return false;
	}
	if(document.myform.newpass.value=="")
	{
		alert("Plese Enter your New Password");
		document.myform.oldpass.focus();
		return false;
	}
	if(document.myform.confirmpass.value=="")
	{
		alert("Plese Enter your Confirm Password");
		document.myform.oldpass.focus();
		return false;
	}
	if(document.myform.newpass.value!=document.myform.confirmpass.value)
	{
		alert("New and Confirm Password is Mismatch");
		document.myform.oldpass.focus();
		return false;
	}
	
}
</script>

	<!-- For Style -->
	<link href="<%=request.getContextPath() %>/HomeCSS/templatemo_style.css" rel="stylesheet" type="text/css" /> 
	
	<!-- For Toast Message -->
	<script src="<%=request.getContextPath()%>/jquery.toastmessage.js" type="text/javascript"></script>
    <link href="<%=request.getContextPath()%>/jquery.toastmessage.css" rel="stylesheet" type="text/css" />
	

</head>

<%

String uid = session.getAttribute("userid").toString();

String userid = UserDAO.getUserid(uid);

%>

<body onload="startTimer()">

 
<div style="position:absolute; width:600px;text-align: center;left: 130px;top: -10px;" >
    <h2 style="color: #DB7093;"><b>Change Password</b></h2>
</div> <!-- /.page-header -->
	
    <form name="myform" action="<%=request.getContextPath()%>/ChangePass_User" method="post" onsubmit="return change()">
			
	
	<table cellspacing="15" style="position:absolute; width:600px;text-align: center;color: white;left: 150px;top: 70px;" >
		
	  <tr align="center">
	        <td>
	        		User Id
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td  id="data">
					<input type="text" name="id" value="<%=userid%>" readonly="readonly">
			</td>
			
			
			<td width="15px"></td>
			
			
			
			
   	  </tr>
   	  <tr align="center">
			<td>
	        		Old Password
	        </td>
	        
	        <td>:</td>
	        
			<td  >
					<input type="password" name="oldpass" placeholder="Please Enter Old Password">
			</td></tr>
   	  
   	  
   	  <tr align="center">
	        <td>
	        		New Password
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td  >
					<input type="password" name="newpass" placeholder="Please Enter New Password">
			</td></tr>
			
   	 
   	  <tr>
			
			 <td>
	        		Confirm Password
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td >
					<input type="password" name="confirmpass" placeholder="Please Enter Confirm Password">
			</td>
			</tr>
   	  
	  <tr align="center">
			<td colspan="7" align="center">
					 <input class="mainBtn" type="submit" value="Change" />
			</td>
	 </tr>
	
	</table>
	 
	</form><!-- form -->   

<%
	if(Utility.parse(request.getParameter("no"))==1)
	{
%>
		
		
		<script type="text/javascript">
		
		alert("Password Updated Successfully!");
		</script>
						
<%
	}
	if(Utility.parse(request.getParameter("no"))==2)
	{
%>
			
		
		<script type="text/javascript">
		
		alert("Opps,Something Went Wrong Try Again Latter!!!!!");
		</script>
				
<%
	}
	if(Utility.parse(request.getParameter("no"))==3)
	{
%>
	<script type="text/javascript">
		
		alert("Old Password Mismatch!!!!!");
		</script>	
		
				
<%
	}
%>
       
        
	

</body>
</html>