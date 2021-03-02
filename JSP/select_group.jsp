<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.support.Utility"%>
<%@page import="com.Database.UserDAO"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="<%=request.getContextPath() %>/HomeCSS/templatemo_style.css" rel="stylesheet" type="text/css" /> 
	
	<style type="text/css">
	.flat-table {
		margin-bottom: 10px;
		border-collapse:collapse;
		font-family: 'Lato', Calibri, Arial, sans-serif;
		border: none;
                border-radius: 3px;
               -webkit-border-radius: 3px;
               -moz-border-radius: 3px;
	}
	.flat-table th, .flat-table td {
		box-shadow: inset 0 -1px rgba(0,0,0,0.25), 
			inset 0 1px rgba(0,0,0,0.25);
	}
	.flat-table th {
		font-weight: normal;
		-webkit-font-smoothing: antialiased;
		padding: 0.3em;
		color: #000;
		text-shadow: 0 0 1px rgba(0,0,0,0.1);
		font-size: 1.0em;
	}
	.flat-table td {
		color: #f7f7f7;
		padding: 0.2em 1em 0.2em 1.10em;
		text-shadow: 0 0 1px rgba(255,255,255,0.1);
		font-size: 1.0em;
	}
	.flat-table tr {
		-webkit-transition: background 0.3s, box-shadow 0.3s;
		-moz-transition: background 0.3s, box-shadow 0.3s;
		transition: background 0.3s, box-shadow 0.3s;
	}
	.flat-table-1 {
		background: #336ca6;
	}
	.flat-table-1 tr:hover {
		background: rgba(0,0,0,0.19);
	}
	.flat-table-2 tr:hover {
		background: rgba(0,0,0,0.1);
	}
	.flat-table-2 {
		background: #EEB4B4;
	}
	.flat-table-3 {
		background: #52be7f;
	}
	.flat-table-3 tr:hover {
		background: rgba(0,0,0,0.1);
	}
</style>


</head>

<%

String latitude = request.getParameter("lat");
String longitude = request.getParameter("lon");

%>
<body>


   
   <form action="<%=request.getContextPath()%>/SendRequest?submit=process" method="post">
   <input type="hidden" name="lat"  value="<%=latitude%>" >
  <input type="hidden"  name="lon" value="<%=longitude%>" >
  
   

<input type="submit"  class="mainBtn" value="Send Request" style="position: relative;left: 500px;top: -10px;">
  
   <%

   ResultSet rs1 = (ResultSet)request.getAttribute("rs");

   %>

      <!-- Education
      ----------------------------------------------- -->
     
         <div style="position: absolute;top: -10px;left: 200px;color: white;">
            <h1><span>Member Details</span></h1>
         </div>

         
	

	<table class="flat-table flat-table-2" style="position: absolute;left: 100px;">
		<thead>
        	<tr>
        	<th>Code</th>
				<th>Id</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Phone No</th>
				<th>Email Id</th>
				<th>User Status</th>
				
            </tr>
		</thead>
        <tbody>
        
        <%
	 while(rs1.next())
				{
	
	%>
	
	<tr>
	<td><input type="checkbox" name="code" value="<%=rs1.getInt(1)%>"></td>
            	<td><%=rs1.getString(2)%></td>
                <td><%=rs1.getString(4)%></td>
                <td><%=rs1.getString(5)%></td>
                <td><%=rs1.getString(6)%></td>
                <td><%=rs1.getString(7)%></td>
           		<td><%=rs1.getString(8)%></td>
            </tr>
            
<%

}
	 
	 %>
	 
            
        </tbody>
	</table>


        
      </form>
      
      
	 
    <%
	if(Utility.parse(request.getParameter("no"))==1)
	{
%>
	<script type="text/javascript">
		
		alert("Please Select Atleast one checkbox!");
		</script>	
		
				
<%
	}
    if(Utility.parse(request.getParameter("no"))==2)
	{
%>
		
		
		<script type="text/javascript">
		
		alert("Request have sended successfully!");
		</script>	
				
<%
	}
    if(Utility.parse(request.getParameter("no"))==3)
	{
%>
		
		<script type="text/javascript">
		
		alert("Something Went Wrong please try again!");
		</script>	
				
<%
	}
    if(Utility.parse(request.getParameter("no"))==4)
	{
%>
				
		<script type="text/javascript">
		
		alert("Please,Select Atlease 3 or 5 members to make a group!");
		</script>	
				
<%
	}
	
	
%>
   
</body>
</html>