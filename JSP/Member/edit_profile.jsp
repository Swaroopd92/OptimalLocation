<%@page import="com.support.Utility"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="com.Database.UserDAO"%><html>
<head>
	
	<title>Owner Profile</title>
	

	<!-- For Style -->
	<link href="<%=request.getContextPath() %>/HomeCSS/templatemo_style.css" rel="stylesheet" type="text/css" /> 
	
	<!-- For Toast Message -->
	<script src="<%=request.getContextPath()%>/jquery.toastmessage.js" type="text/javascript"></script>
    <link href="<%=request.getContextPath()%>/jquery.toastmessage.css" rel="stylesheet" type="text/css" />
	

</head>

<%

String uid = session.getAttribute("userid").toString();

String userid = UserDAO.getUserid(uid);

ResultSet rs = UserDAO.getProfile(userid);

String u_id="",unm="",gen="",phone="",email="",rol="";
while(rs.next())
{
	u_id=rs.getString(2);
	unm=rs.getString(4);
	gen=rs.getString(5);
	phone=rs.getString(6);
	email=rs.getString(7);
	rol=rs.getString(9);
}

%>

<body onload="startTimer()">

 
<div style="position:absolute; width:600px;text-align: center;left: 130px;top: -10px;" >
    <h2 style="color: #DB7093;"><b>Edit Profile</b></h2>
</div> <!-- /.page-header -->
	
    <form name="myform" action="<%=request.getContextPath()%>/EditProfile" method="post" >
			
	
	<table cellspacing="15" style="position:absolute; width:600px;text-align: center;color: white;left: 150px;top: 70px;" >
		
	  <tr align="center">
	        <td>
	        		User Id
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td  id="data">
					<input type="text" name="id" value="<%=u_id%>" readonly="readonly" >
			</td>
			
			
			<td width="15px"></td>
			
			
			
			
   	  </tr>
   	  <tr align="center">
			<td>
	        		Name
	        </td>
	        
	        <td>:</td>
	        
			<td  >
					<input type="text" name="name" value="<%=unm%>">
			</td></tr>
   	  
   	  
   	  <tr align="center">
	        <td>
	        		Gender
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td  >
					<input type="text" name="gender" value="<%=gen%>">
			</td></tr>
			
   	 
   	  <tr>
			
			 <td>
	        		Phone
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td >
					<input type="text" name="phone" value="<%=phone%>">
			</td>
			</tr>
   	  
   	  <tr>
			
			 <td>
	        		Email
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td >
					<input type="text" name="email" value="<%=email%>">
			</td>
			</tr>
			
			<tr>
			
			 <td>
	        		Role
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td >
					<input type="text" name="role" value="<%=rol%>" readonly="readonly">
			</td>
			</tr>
			
	  <tr align="center">
			<td colspan="7" align="center">
					 <input class="mainBtn" type="submit" value="Update" />
			</td>
	 </tr>
	
	</table>
	 
	</form><!-- form -->   

<%
	
	if(Utility.parse(request.getParameter("no"))==1)
	{
%>
		
		<script type="text/javascript">
		
		alert("Opps,Something Went Wrong Try Again Latter!!!!!");
		</script>			
<%
	}
	
%>
        
	

</body>
</html>