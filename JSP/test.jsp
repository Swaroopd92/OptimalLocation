
<!DOCTYPE html>
<html lang="en">
  <head>
  	<title> Smart Forms - UI Widgets </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/CSS/awsome.css">
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/CSS/smart-addons.css">
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/CSS/smart-forms.css">
    
	<script type="text/javascript" src="<%=request.getContextPath()%>/JS/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/JS/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/JS/jquery-ui-monthpicker.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/JS/jquery-ui-timepicker.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/JS/jquery-ui-touch-punch.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/JS/jquery.spectrum.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/JS/jquery.stepper.min.js"></script>
    
    <!--[if lte IE 9]>   
        <script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
    <![endif]-->    
    
    <!--[if lte IE 8]>
        <link type="text/css" rel="stylesheet" href="css/smart-forms-ie8.css">
    <![endif]-->
    
    <script type="text/javascript">
	
		$(function() {
		
					/* @time picker
					------------------------------------------------------------------ */				
					$('#timepicker1').timepicker({
						beforeShow: function(input, inst) {
								var newclass = 'smart-forms'; 
								var smartpikr = inst.dpDiv.parent();
								if (!smartpikr.hasClass('smart-forms')){
									inst.dpDiv.wrap('<div class="'+newclass+'"></div>');
								}
						}					
					
					});
					
					$('#timepicker2').timepicker({
						beforeShow: function(input, inst) {
								var newclass = 'smart-forms'; 
								var smartpikr = inst.dpDiv.parent();
								if (!smartpikr.hasClass('smart-forms')){
									inst.dpDiv.wrap('<div class="'+newclass+'"></div>');
								}
						}					
					
					});
					
					/* @date time picker
					------------------------------------------------------------------ */	
					$('#dtimepicker1').datetimepicker({
						prevText: '<i class="fa fa-chevron-left"></i>',
						nextText: '<i class="fa fa-chevron-right"></i>',				
						beforeShow: function(input, inst) {
								var newclass = 'smart-forms'; 
								var smartpikr = inst.dpDiv.parent();
								if (!smartpikr.hasClass('smart-forms')){
									inst.dpDiv.wrap('<div class="'+newclass+'"></div>');
								}
						}					
					
					});
					
					$('#dtimepicker2').datetimepicker({
						prevText: '<i class="fa fa-chevron-left"></i>',
						nextText: '<i class="fa fa-chevron-right"></i>',				
						beforeShow: function(input, inst) {
								var newclass = 'smart-forms'; 
								var smartpikr = inst.dpDiv.parent();
								if (!smartpikr.hasClass('smart-forms')){
									inst.dpDiv.wrap('<div class="'+newclass+'"></div>');
								}
						}					
					
					});	
					
					/* @date picker
					------------------------------------------------------------------ */					
					$("#datepicker1").datepicker({
						numberOfMonths: 1,
						prevText: '<i class="fa fa-chevron-left"></i>',
						nextText: '<i class="fa fa-chevron-right"></i>',			
						showButtonPanel: false
					});
					
					$("#datepicker2").datepicker({
						numberOfMonths: 1,
						prevText: '<i class="fa fa-chevron-left"></i>',
						nextText: '<i class="fa fa-chevron-right"></i>',			
						showButtonPanel: false
					});
					
					/* @month picker
					------------------------------------------------------------------ */				
					$("#month-picker1").monthpicker({
						changeYear: false,
						stepYears: 1,
						prevText: '<i class="fa fa-chevron-left"></i>',
						nextText: '<i class="fa fa-chevron-right"></i>',
						showButtonPanel: true
					});					
					
					$("#month-picker2").monthpicker({
						changeYear: false,
						stepYears: 1,
						prevText: '<i class="fa fa-chevron-left"></i>',
						nextText: '<i class="fa fa-chevron-right"></i>',
						showButtonPanel: true
					});
					
					/* @color picker
					------------------------------------------------------------------ */					
					$("#colorpicker1").spectrum({
						color: "#FCD208"
					});		
				
					$("#colorpicker2").spectrum({
						color: "#D15ADE",
						showInput: true,
						showPalette: true,
						palette: [
							['black', 'white', 'blanchedalmond'],
							['rgb(255, 128, 0);', 'hsv 100 70 50', 'lightyellow']
						]
					});
					
					$("#colorpicker1, #colorpicker2").show();
					
					/* @numeric stepper
					------------------------------------------------------------------ */					
					$('#stepper3').stepper({
						wheel_step: 0.1,
						arrow_step: 0.2
					});
		
					$('#stepper4').stepper({ 
						UI: false,
						allowWheel :false 
					});
					
					/* @ui slider
					------------------------------------------------------------------ */					
					$("#slider").slider({
						range: "min",
						min: 10,
						max: 100,
						value: 80			
					});
					
					$("#slider1").slider({
						range: true,
						values: [17, 83]
					});																			
		
		});				
    
    </script>
    
    
       
</head>

<body class="woodbg">

	<div class="smart-wrap">
    	<div class="smart-forms smart-container wrap-2">
        
        	<div class="form-header header-primary">
            	<h4><i class="fa fa-flask"></i> UI Widgets </h4>
            </div><!-- end .form-header section -->
            
            <form method="post" action="/" id="smart-form">
            	<div class="form-body">
                
                    <div class="spacer-b30">
                    	<div class="tagline"><span> Time picker </span></div><!-- .tagline -->
                    </div>             
                    
                    <div class="frm-row">
                        <div class="section colm colm6">
                            <label for="timepicker1" class="field prepend-icon">
                            	<input type="text" id="timepicker1" name="timepicker1" class="gui-input">
                                <label class="field-icon"><i class="fa fa-clock-o"></i></label>  
                            </label>
                        </div><!-- end section -->
                        
                        <div class="section colm colm6">
                            <label for="timepicker2" class="field prepend-icon">
                            	<input type="text" id="timepicker2" name="timepicker2" class="gui-input">
                                <label class="field-icon"><i class="fa fa-clock-o"></i></label>  
                            </label>
                        </div><!-- end section -->
                    </div><!-- end .frm-row section -->
                    
                    <div class="spacer-t20 spacer-b40">
                    	<div class="tagline"><span> Date-Time picker  </span></div><!-- .tagline -->
                    </div>                                       
                    
                    <div class="frm-row">
                        <div class="section colm colm6">
                            <label for="dtimepicker1" class="field prepend-icon">
                            	<input type="text" id="dtimepicker1" name="dtimepicker1" class="gui-input">
                                <label class="field-icon"><i class="fa fa-calendar"></i></label>  
                            </label>
                        </div><!-- end section -->
                        
                        <div class="section colm colm6">
                            <label for="dtimepicker2" class="field prepend-icon">
                            	<input type="text" id="dtimepicker2" name="dtimepicker2" class="gui-input">
                                <label class="field-icon"><i class="fa fa-calendar"></i></label>  
                            </label>
                        </div><!-- end section -->
                    </div><!-- end .frm-row section -->                   
                   
                    
                    <div class="spacer-t20 spacer-b40">
                    	<div class="tagline"><span> Date Picker </span></div><!-- .tagline -->
                    </div>
                    
                    <div class="frm-row">
                        <div class="section colm colm6">
                            <label for="datepicker1" class="field prepend-icon">
                            	<input type="text" id="datepicker1" name="datepicker1" class="gui-input">
                                <label class="field-icon"><i class="fa fa-calendar"></i></label>  
                            </label>
                        </div><!-- end section -->
                        
                        <div class="section colm colm6">
                            <label for="datepicker2" class="field prepend-icon">
                            	<input type="text" id="datepicker2" name="datepicker2" class="gui-input">
                                <label class="field-icon"><i class="fa fa-calendar"></i></label>  
                            </label>
                        </div><!-- end section -->
                    </div><!-- end .frm-row section -->
                    
                    <div class="spacer-t20 spacer-b40">
                    	<div class="tagline"><span> Month Picker </span></div><!-- .tagline -->
                    </div>                    
                    
                    <div class="frm-row">
                        <div class="section colm colm6">
                            <label class="field prepend-icon">
                            	<input type="text" id="month-picker1" name="month-picker1" class="gui-input">
                                <label class="field-icon"><i class="fa fa-calendar-o"></i></label>  
                            </label>
                        </div><!-- end section -->
                        
                        <div class="section colm colm6">
                            <label class="field prepend-icon">
                            	<input type="text" id="month-picker2" name="month-picker2" class="gui-input">
                                <label class="field-icon"><i class="fa fa-calendar-o"></i></label>  
                            </label>
                        </div><!-- end section -->
                    </div><!-- end .frm-row section -->
                    
                    <div class="spacer-t20 spacer-b40">
                    	<div class="tagline"><span> Color Picker </span></div><!-- .tagline -->
                    </div>
                    
                	<div class="frm-row">
                        <div class="section colm colm6">
                            <label class="field sfcolor">
                            	<input type="text" name="colorpicker1" id="colorpicker1" class="gui-input">
                            </label>
                        </div><!-- end section -->
                        
                        <div class="section colm colm6">
                            <label class="field sfcolor">
                            	<input type="text" name="colorpicker2" id="colorpicker2" class="gui-input">
                            </label>
                        </div><!-- end section -->
                    </div> <!-- end .frm-row section --> 
                    
                    <div class="spacer-t20 spacer-b40">
                    	<div class="tagline"><span> Numeric Stepper </span></div><!-- .tagline -->
                    </div>
                    
                	<div class="frm-row">
                        <div class="section colm colm6">
                            <label class="field">
                                <input type="text" name="stepper3" id="stepper3" value="3.6" class="gui-input">
                            </label>
                        </div><!-- end section -->
                        
                        <div class="section colm colm6">
                            <label class="field">
                            	<input type="text" name="stepper4" id="stepper4" value="2" class="gui-input">
                            </label>
                        </div><!-- end section -->
                    </div> <!-- end .frm-row section -->
                    
                    <div class="spacer-t20 spacer-b40">
                    	<div class="tagline"><span> UI Slider </span></div><!-- .tagline -->
                    </div>                    
                    
                    <div class="section">
                        <div class="slider-wrapper blue-slider">
                            <div id="slider"></div>
                        </div><!-- end .slider-wrapper -->
                    </div><!-- end section -->
                    
                    <div class="section">
                        <div class="slider-wrapper yellow-slider">
                            <div id="slider1"></div>
                        </div><!-- end .slider-wrapper -->
                    </div><!-- end section -->                                                                                                  
                    
                </div><!-- end .form-body section -->
                <div class="form-footer">
                	<button type="submit" class="button btn-primary"> Submit Form </button>
                    <button type="reset" class="button"> Cancel </button>
                </div><!-- end .form-footer section -->
            </form>
            
        </div><!-- end .smart-forms section -->
    </div><!-- end .smart-wrap section -->
    
    <div></div><!-- end section -->

</body>
</html>
