<%@page import="com.support.Utility"%>
<!DOCTYPE html>

<html lang="en">
  <head>
  	<title>Registration Form </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/CSS/smart-forms.css">
    
   
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/awesome.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sky-forms.css">
		
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
  
    
    <!-- User Toast Message CSS-->
    <link href="<%=request.getContextPath() %>/CSS/message.css" rel="stylesheet" type="text/css" />
    
	<script type="text/javascript" src="<%=request.getContextPath()%>/JS/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/JS/jquery.validate.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/JS/additional-methods.js"></script>
    
    <!-- User Toast Message JS-->
     <script type="text/javascript" src="<%=request.getContextPath() %>/JS/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/JS/script.js"></script>
        
    <script type="text/javascript">
	
		$(function() {
		
				/* @custom validation method (smartCaptcha) 
				------------------------------------------------------------------ */
					
				$.validator.methods.smartCaptcha = function(value, element, param) {
						return value == param;
				};
						
				$( "#smart-form" ).validate({
				
						/* @validation states + elements 
						------------------------------------------- */
						
						errorClass: "state-error",
						validClass: "state-success",
						errorElement: "em",
						
						/* @validation rules 
						------------------------------------------ */
							
						rules: {
								firstname: {
										required: true
								},
								lastname: {
										required: true
								},					
								useremail: {
										required: true,
										email: true
								},
								website: {
										required: true,
										url: true
								},								
								language: {
										required: true
								},								
								upload1:  {
										required: true,
										extension:"jpg|png|gif|jpeg|doc|docx|pdf|xls|rar|zip"
								},
								mobileos:  {
										required: true
								},
								comment:  {
										required: true,
										minlength: 30
								},
								mobile_phone: {
										require_from_group: [1, ".phone-group"]
								},
								home_phone: {
										require_from_group: [1, ".phone-group"]
								},											
								password:{
										required: true,
										minlength: 6,
										maxlength: 16						
								},
								repeatPassword:{
										required: true,
										minlength: 6,
										maxlength: 16,						
										equalTo: '#password'
								},
								gender:{
										required: true
								},
								languages:{
										required: true
								},			
								verification:{
										required:true,
										smartCaptcha:19	
								},
								applicant_age: {
										required: true,
										min: 16
								},
								licence_no: {
										required: function(element) {
												return $("#applicant_age").val() > 19;
										}
								},
								child_name: {
										required: "#parents:checked"
								}																							
							
						},
						
						/* @validation error messages 
						---------------------------------------------- */
							
						messages:{
								firstname: {
										required: 'Enter id'
								},
								lastname: {
										required: 'Enter name'
								},					
								useremail: {
										required: 'Enter email address',
										email: 'Enter a VALID email address'
								},
								website: {
										required: 'Enter your website URL',
										url: 'URL should start with - http://www'
								},														
								language: {
										required: 'Choose a language'
								},						
								upload1:  {
										required: 'Please browse a file',
										extension: 'File format not supported'
								},
								mobileos:  {
										required: 'Please select a mobile platform'
								},								
								comment:  {
										required: 'Oops you forgot to comment',
										minlength: 'Enter at least 30 characters or more'
								},
								mobile_phone: {
										require_from_group: 'Fill at least a mobile contact'
								},
								home_phone: {
										require_from_group: 'Fill at least a home contact'
								},																				
								password:{
										required: 'Please enter a password'
								},
								repeatPassword:{
										required: 'Please repeat the above password',
										equalTo: 'Password mismatch detected'
								},
								gender:{
										required: 'Please choose specie'
								},
								languages:{
										required: 'Select laguages spoken'
								},																		
								verification:{
										required: 'Please enter verification code',
										smartCaptcha: 'Oops - enter a correct verification code'
								},
								applicant_age: {
										required: 'Enter applicant age',
										min: 'Must be 16 years and above'
								},
								licence_no: {
										required: 'Enter licence number'
								},
								child_name: {
										required: 'Please enter your childs name'
								}																			
						 
						},

						/* @validation highlighting + error placement  
						---------------------------------------------------- */	
						
						highlight: function(element, errorClass, validClass) {
								$(element).closest('.field').addClass(errorClass).removeClass(validClass);
						},
						unhighlight: function(element, errorClass, validClass) {
								$(element).closest('.field').removeClass(errorClass).addClass(validClass);
						},
						errorPlacement: function(error, element) {
						   if (element.is(":radio") || element.is(":checkbox")) {
									element.closest('.option-group').after(error);
						   } else {
									error.insertAfter(element.parent());
						   }
						}
								
				});		
		
		});				
    
    </script>
    
    
       
</head>

<body onload="startTimer();">

		
<div style="position:absolute;top:0px;left:-35px; width:1024px;text-align: center;left">
	      <img src="<%=request.getContextPath()%>/Img/header.png" height="100" alt="Genius" width="1050">
</div> 
<div style="position:absolute;top:0px;left:-35px; width:100px;text-align: center;left:10px;">
	      <img src="<%=request.getContextPath()%>/Img/map_icon.png" height="100" alt="Genius" width="100">
</div>

<div style="position:absolute;top:-20px;left:-35px; width:930px;text-align: center;left: 60px;">
<h1 class="ex11">
            	Privacy-Preserving Optimal Meeting Location Determination </h1>
</div>
    	<div class="smart-forms smart-container wrap-2" style="position: relative;top: 110px;left: 20px;">
        
        	
            
            <form method="post" action="<%=request.getContextPath()%>/NewUser" id="smart-form">
            	
            	
            	<div class="form-body">
                
                    <div class="spacer-b30">
                    	<div class="tagline"><span>User Registration</span></div><!-- .tagline -->
                    </div>
                    
                    <div class="frm-row">
                        <div class="section colm colm6">
                            <label for="firstname" class="field prepend-icon">
                                <input type="text" name="id" id="firstname" class="gui-input" placeholder="User Id">
                                <label for="firstname" class="field-icon"><i class="fa fa-user"></i></label>  
                            </label>
                        </div><!-- end section -->
                        
                         <div class="section colm colm6">
                    	<label for="password" class="field prepend-icon">
                        	<input type="password" name="password" id="password" class="gui-input" placeholder="Create a password">
                            <label for="password" class="field-icon"><i class="fa fa-lock"></i></label>  
                        </label>
                    </div><!-- end section -->
                        
                    </div><!-- end .frm-row section -->                                    
                
               
                     <div class="frm-row">
                        <div class="section colm colm6">
                            <label for="firstname" class="field prepend-icon">
                                <input type="text" name="name" id="lastname" class="gui-input" placeholder="Enter Name">
                                <label for="firstname" class="field-icon"><i class="fa fa-user"></i></label>  
                            </label>
                        </div><!-- end section -->
                        <div class="section colm colm6">
                    	<label for="useremail" class="field prepend-icon">
                        	<input type="email" name="useremail" id="useremail" class="gui-input" placeholder="Email address">
                            <label for="useremail" class="field-icon"><i class="fa fa-envelope"></i></label>  
                        </label>
                    </div><!-- end section -->
                    </div><!-- end .frm-row section -->   
                    
                      <div class="spacer-b30">
                    	<div class="tagline"><span> Select Gender</span></div><!-- .tagline -->
                    </div>
                    
                    
                    <div class="section">
                    
                        <div class="section colm colm6 pad-r40 bdr">
                            <div class="option-group field">
                                <label for="female" class="option block">
                                    <input type="radio" name="gender" id="female" value="female">
                                    <span class="radio"></span> Female 
                                </label>
                                
                                <label for="male" class="option block spacer-t10">
                                    <input type="radio" name="gender" id="male" value="male">
                                    <span class="radio"></span> Male                   
                                </label>                            
                                
                            </div>
                                                
                        </div><!-- end .section section -->                                
    
                        
                        
                        
                    </div> <!-- end .frm-row section -->
                     
                    
                	
                    
                    <div class="section">
                    
                        <div class="section colm colm6">
                            <label for="mobile_phone" class="field prepend-icon">
                                <input type="tel" name="mobile_phone" id="mobile_phone" class="gui-input phone-group" placeholder="Mobile number">
                                <label for="mobile_phone" class="field-icon"><i class="fa fa-mobile-phone"></i></label>  
                            </label>
                        </div><!-- end section -->
                                            
                    </div><!-- end .frm-row section -->
                                        
                </div><!-- end .form-body section -->
                <div class="form-footer">
                	<button type="submit" class="button btn-primary"> Register </button>
                   
                </div><!-- end .form-footer section -->
            </form>
            
        </div><!-- end .smart-forms section -->
  
    
    <%
	if(Utility.parse(request.getParameter("no"))==1)
	{
%>
		<div class="info" id="message" style="position:absolute;top:421px;left:11px">	
			<p>User Id Already Exist!</p>
		</div>			
<%
	}
	if(Utility.parse(request.getParameter("no"))==2)
	{
%>
		<div class="error" id="message" style="position:absolute;top:421px;left:11px">	
			<p>Opps,Something Went Wrong Try Again Latter!!!!!</p>
		</div>			
<%
	}
	
%>
   

</body>
</html>
