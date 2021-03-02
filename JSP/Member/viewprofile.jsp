<%@page import="com.support.Utility"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="com.Database.UserDAO"%><html>
<head>
	
	<title>Initiator Profile</title>
	

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
    <h2 style="color: #DB7093;"><b>View Profile</b></h2>
</div> <!-- /.page-header -->
	
    <form name="myform" action="<%=request.getContextPath()%>/JSP/Member/edit_profile.jsp" >
			
	
	<table cellspacing="15" style="position:absolute; width:450px;color: white;left: 270px;top: 70px;" >
		
	  <tr >
	        <td>
	        		User Id
	        </td>
	        
	        <td width="2px">:</td>
	        
			<td  id="data">
					<%=u_id%>
			</td>
			
			
			<td width="15px"></td>
			
			
			
			
   	  </tr>
   	  <tr >
			<td>
	        		User Name
	        </td>
	        
	        <td>:</td>
	        
			<td  >
					<%=unm%>
			</td></tr>
   	  
   	  
   	  <tr >
	        <td>
	        		Gender
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td>
					<%=gen%>
			</td></tr>
			
   	 
   	  <tr >
			
			 <td>
	        		Phone Number
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td >
					<%=phone%>
			</td>
			</tr>
			
			 <tr>
			
			 <td>
	        		Email Id
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td >
					<%=email%>
			</td>
			</tr>
			 <tr>
			
			 <td>
	        		Role
	        </td>
	        
	        <td width="11px">:</td>
	        
			<td>
					<%=rol%>
			</td>
			</tr>
   	  
	 
	
	</table>
	 
	  <input class="mainBtn" type="submit" value="Update Profile" style="position: absolute;top: 300px;left: 370px;"/>
	</form><!-- form -->   

<%
	if(Utility.parse(request.getParameter("no"))==1)
	{
%>
			
		<script type="text/javascript">
		
		alert("Profile Updated Successfully!");
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
	
%>
        
	

</body>
</html>